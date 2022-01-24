#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_6__ {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  auth_baton; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  hostname; } ;
typedef  TYPE_2__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_HTTP_BULK_UPDATES ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS ; 
 char const* SVN_CONFIG_SECTION_GLOBAL ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_GROUPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  check_cancel ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_client_ctx_t **ctx_p,
                    svn_boolean_t non_interactive,
                    const char *username,
                    const char *password,
                    const char *config_dir,
                    const char *repos_url,
                    svn_boolean_t no_auth_cache,
                    svn_boolean_t trust_unknown_ca,
                    svn_boolean_t trust_cn_mismatch,
                    svn_boolean_t trust_expired,
                    svn_boolean_t trust_not_yet_valid,
                    svn_boolean_t trust_other_failure,
                    apr_array_header_t *config_options,
                    apr_pool_t *pool)
{
  svn_client_ctx_t *ctx = NULL;
  svn_config_t *cfg_config, *cfg_servers;

  FUNC0(FUNC11(pool));

  FUNC0(FUNC5(config_dir, pool));
  FUNC0(FUNC2(&ctx, NULL, pool));

  FUNC0(FUNC7(&(ctx->config), config_dir, pool));

  if (config_options)
    FUNC0(FUNC3(ctx->config, config_options,
                                              "svnrdump: ", "--config-option"));

  cfg_config = FUNC10(ctx->config, SVN_CONFIG_CATEGORY_CONFIG);

  /* ### FIXME: This is a hack to work around the fact that our dump
     ### editor simply can't handle the way ra_serf violates the
     ### editor v1 drive ordering requirements.
     ###
     ### We'll override both the global value and server-specific one
     ### for the 'http-bulk-updates' and 'http-max-connections'
     ### options in order to get ra_serf to try a bulk-update if the
     ### server will allow it, or at least try to limit all its
     ### auxiliary GETs/PROPFINDs to happening (well-ordered) on a
     ### single server connection.
     ###
     ### See http://subversion.tigris.org/issues/show_bug.cgi?id=4116.
  */
  cfg_servers = FUNC10(ctx->config, SVN_CONFIG_CATEGORY_SERVERS);
  FUNC8(cfg_servers, SVN_CONFIG_SECTION_GLOBAL,
                      SVN_CONFIG_OPTION_HTTP_BULK_UPDATES, TRUE);
  FUNC9(cfg_servers, SVN_CONFIG_SECTION_GLOBAL,
                       SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS, 2);
  if (cfg_servers)
    {
      apr_status_t status;
      apr_uri_t parsed_url;

      status = FUNC1(pool, repos_url, &parsed_url);
      if (! status)
        {
          const char *server_group;

          server_group = FUNC6(cfg_servers, parsed_url.hostname,
                                               SVN_CONFIG_SECTION_GROUPS, pool);
          if (server_group)
            {
              FUNC8(cfg_servers, server_group,
                                  SVN_CONFIG_OPTION_HTTP_BULK_UPDATES, TRUE);
              FUNC9(cfg_servers, server_group,
                                   SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS, 2);
            }
        }
    }

  /* Set up our cancellation support. */
  ctx->cancel_func = check_cancel;

  /* Default authentication providers for non-interactive use */
  FUNC0(FUNC4(&(ctx->auth_baton), non_interactive,
                                         username, password, config_dir,
                                         no_auth_cache, trust_unknown_ca,
                                         trust_cn_mismatch, trust_expired,
                                         trust_not_yet_valid,
                                         trust_other_failure,
                                         cfg_config, ctx->cancel_func,
                                         ctx->cancel_baton, pool));
  *ctx_p = ctx;
  return SVN_NO_ERROR;
}