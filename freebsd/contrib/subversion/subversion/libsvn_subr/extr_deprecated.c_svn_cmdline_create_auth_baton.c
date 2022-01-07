
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int svn_auth_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int svn_cmdline_create_auth_baton2 (int **,int ,char const*,char const*,char const*,int ,int ,int ,int ,int ,int ,int *,int ,void*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_cmdline_create_auth_baton(svn_auth_baton_t **ab,
                              svn_boolean_t non_interactive,
                              const char *auth_username,
                              const char *auth_password,
                              const char *config_dir,
                              svn_boolean_t no_auth_cache,
                              svn_boolean_t trust_server_cert,
                              svn_config_t *cfg,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *pool)
{
  return svn_error_trace(svn_cmdline_create_auth_baton2(ab,
                                                        non_interactive,
                                                        auth_username,
                                                        auth_password,
                                                        config_dir,
                                                        no_auth_cache,
                                                        trust_server_cert,
                                                        FALSE,
                                                        FALSE,
                                                        FALSE,
                                                        FALSE,
                                                        cfg,
                                                        cancel_func,
                                                        cancel_baton,
                                                        pool));
}
