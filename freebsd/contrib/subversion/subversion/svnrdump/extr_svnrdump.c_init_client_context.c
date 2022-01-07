
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_6__ {int cancel_baton; int cancel_func; int auth_baton; int config; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int hostname; } ;
typedef TYPE_2__ apr_uri_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_CONFIG_OPTION_HTTP_BULK_UPDATES ;
 int SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS ;
 char const* SVN_CONFIG_SECTION_GLOBAL ;
 int SVN_CONFIG_SECTION_GROUPS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_uri_parse (int *,char const*,TYPE_2__*) ;
 int check_cancel ;
 int svn_client_create_context2 (TYPE_1__**,int *,int *) ;
 int svn_cmdline__apply_config_options (int ,int *,char*,char*) ;
 int svn_cmdline_create_auth_baton2 (int *,int ,char const*,char const*,char const*,int ,int ,int ,int ,int ,int ,int *,int ,int ,int *) ;
 int svn_config_ensure (char const*,int *) ;
 char* svn_config_find_group (int *,int ,int ,int *) ;
 int svn_config_get_config (int *,char const*,int *) ;
 int svn_config_set_bool (int *,char const*,int ,int ) ;
 int svn_config_set_int64 (int *,char const*,int ,int) ;
 int * svn_hash_gets (int ,int ) ;
 int svn_ra_initialize (int *) ;

__attribute__((used)) static svn_error_t *
init_client_context(svn_client_ctx_t **ctx_p,
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
  svn_client_ctx_t *ctx = ((void*)0);
  svn_config_t *cfg_config, *cfg_servers;

  SVN_ERR(svn_ra_initialize(pool));

  SVN_ERR(svn_config_ensure(config_dir, pool));
  SVN_ERR(svn_client_create_context2(&ctx, ((void*)0), pool));

  SVN_ERR(svn_config_get_config(&(ctx->config), config_dir, pool));

  if (config_options)
    SVN_ERR(svn_cmdline__apply_config_options(ctx->config, config_options,
                                              "svnrdump: ", "--config-option"));

  cfg_config = svn_hash_gets(ctx->config, SVN_CONFIG_CATEGORY_CONFIG);
  cfg_servers = svn_hash_gets(ctx->config, SVN_CONFIG_CATEGORY_SERVERS);
  svn_config_set_bool(cfg_servers, SVN_CONFIG_SECTION_GLOBAL,
                      SVN_CONFIG_OPTION_HTTP_BULK_UPDATES, TRUE);
  svn_config_set_int64(cfg_servers, SVN_CONFIG_SECTION_GLOBAL,
                       SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS, 2);
  if (cfg_servers)
    {
      apr_status_t status;
      apr_uri_t parsed_url;

      status = apr_uri_parse(pool, repos_url, &parsed_url);
      if (! status)
        {
          const char *server_group;

          server_group = svn_config_find_group(cfg_servers, parsed_url.hostname,
                                               SVN_CONFIG_SECTION_GROUPS, pool);
          if (server_group)
            {
              svn_config_set_bool(cfg_servers, server_group,
                                  SVN_CONFIG_OPTION_HTTP_BULK_UPDATES, TRUE);
              svn_config_set_int64(cfg_servers, server_group,
                                   SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS, 2);
            }
        }
    }


  ctx->cancel_func = check_cancel;


  SVN_ERR(svn_cmdline_create_auth_baton2(&(ctx->auth_baton), non_interactive,
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
