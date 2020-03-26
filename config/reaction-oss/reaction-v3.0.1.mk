###############################################################################
### Reaction OSS v3.0.1
###
### See: `/config.mk` for documentation.
###############################################################################

# List of tools that must be installed.
# A simple check to determine the tool is available. No version check, etc.
define REQUIRED_SOFTWARE
docker \
docker-compose \
git \
node \
yarn
endef

# Defined here are the subprojects in a comma-separated format
# GIT_REPO_URL,SUBDIR_NAME,TAG
# GIT_REPO_URL is the URL of the git repository
# SUBDIR_NAME is just the directory name itself
# TAG is the git tag or branch to checkout
# Projects will be started in this order
define SUBPROJECT_REPOS
git@github.com:/reactioncommerce/reaction-hydra.git,reaction-hydra,v3.0.0 \
git@github.com:/reactioncommerce/reaction.git,reaction,v3.0.0 \
git@github.com:/reactioncommerce/reaction-identity.git,reaction-identity,v3.0.0 \
git@github.com:/reactioncommerce/reaction-admin.git,reaction-admin,v3.0.0-beta.5 \
git@github.com:/reactioncommerce/example-storefront.git,example-storefront,v3.0.0
endef

# List of user defined networks that should be created.
define DOCKER_NETWORKS
reaction.localhost
endef
