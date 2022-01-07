
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_boolean_t ;
struct svn_auth_baton_t {int pool; int slave_parameters; } ;
typedef struct svn_auth_baton_t svn_auth_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_AUTH_PARAM_DONT_STORE_PASSWORDS ;
 int SVN_AUTH_PARAM_DONT_STORE_SSL_CLIENT_CERT_PP ;
 int SVN_AUTH_PARAM_NO_AUTH_CACHE ;
 int SVN_AUTH_PARAM_SERVER_GROUP ;
 int SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS ;
 int SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_CONFIG_DEFAULT_OPTION_STORE_AUTH_CREDS ;
 int SVN_CONFIG_DEFAULT_OPTION_STORE_PASSWORDS ;
 char const* SVN_CONFIG_DEFAULT_OPTION_STORE_PLAINTEXT_PASSWORDS ;
 int SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP ;
 char const* SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT ;
 int SVN_CONFIG_OPTION_STORE_AUTH_CREDS ;
 int SVN_CONFIG_OPTION_STORE_PASSWORDS ;
 int SVN_CONFIG_OPTION_STORE_PLAINTEXT_PASSWORDS ;
 int SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP ;
 int SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT ;
 char const* SVN_CONFIG_SECTION_GLOBAL ;
 int SVN_CONFIG_SECTION_GROUPS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int *) ;
 struct svn_auth_baton_t* apr_pmemdup (int *,struct svn_auth_baton_t const*,int) ;
 char* apr_pstrdup (int ,char const*) ;
 int * svn_auth_get_parameter (struct svn_auth_baton_t*,int ) ;
 int svn_auth_set_parameter (struct svn_auth_baton_t*,int ,char const*) ;
 char* svn_config_find_group (int *,char const*,int ,int *) ;
 int svn_config_get_bool (int *,int *,char const*,int ,int ) ;
 int svn_config_get_yes_no_ask (int *,char const**,char const*,int ,char const*) ;
 int * svn_hash_gets (int *,int ) ;

svn_error_t *
svn_auth__make_session_auth(svn_auth_baton_t **session_auth_baton,
                            const svn_auth_baton_t *auth_baton,
                            apr_hash_t *config,
                            const char *server_name,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_boolean_t store_passwords = SVN_CONFIG_DEFAULT_OPTION_STORE_PASSWORDS;
  svn_boolean_t store_auth_creds = SVN_CONFIG_DEFAULT_OPTION_STORE_AUTH_CREDS;
  const char *store_plaintext_passwords
    = SVN_CONFIG_DEFAULT_OPTION_STORE_PLAINTEXT_PASSWORDS;
  svn_boolean_t store_pp = SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP;
  const char *store_pp_plaintext
    = SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT;
  svn_config_t *servers = ((void*)0);
  const char *server_group = ((void*)0);

  struct svn_auth_baton_t *ab;

  ab = apr_pmemdup(result_pool, auth_baton, sizeof(*ab));

  ab->slave_parameters = apr_hash_make(result_pool);
  if (svn_auth_get_parameter(ab, SVN_AUTH_PARAM_DONT_STORE_PASSWORDS) != ((void*)0))
    store_passwords = FALSE;

  if (svn_auth_get_parameter(ab, SVN_AUTH_PARAM_NO_AUTH_CACHE) != ((void*)0))
    store_auth_creds = FALSE;
  if (config)
    {

      servers = svn_hash_gets(config, SVN_CONFIG_CATEGORY_SERVERS);
      if (servers)
        {


          SVN_ERR(svn_config_get_bool
            (servers, &store_passwords, SVN_CONFIG_SECTION_GLOBAL,
             SVN_CONFIG_OPTION_STORE_PASSWORDS,
             store_passwords));

          SVN_ERR(svn_config_get_yes_no_ask
            (servers, &store_plaintext_passwords, SVN_CONFIG_SECTION_GLOBAL,
             SVN_CONFIG_OPTION_STORE_PLAINTEXT_PASSWORDS,
             SVN_CONFIG_DEFAULT_OPTION_STORE_PLAINTEXT_PASSWORDS));

          SVN_ERR(svn_config_get_bool
            (servers, &store_pp, SVN_CONFIG_SECTION_GLOBAL,
             SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP,
             store_pp));

          SVN_ERR(svn_config_get_yes_no_ask
            (servers, &store_pp_plaintext,
             SVN_CONFIG_SECTION_GLOBAL,
             SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT,
             SVN_CONFIG_DEFAULT_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT));

          SVN_ERR(svn_config_get_bool
            (servers, &store_auth_creds, SVN_CONFIG_SECTION_GLOBAL,
              SVN_CONFIG_OPTION_STORE_AUTH_CREDS,
              store_auth_creds));



          server_group = svn_config_find_group(servers, server_name,
                                               SVN_CONFIG_SECTION_GROUPS,
                                               scratch_pool);

          if (server_group)
            {


              SVN_ERR(svn_config_get_bool(servers, &store_auth_creds,
                                          server_group,
                                          SVN_CONFIG_OPTION_STORE_AUTH_CREDS,
                                          store_auth_creds));

              SVN_ERR(svn_config_get_bool(servers, &store_passwords,
                                          server_group,
                                          SVN_CONFIG_OPTION_STORE_PASSWORDS,
                                          store_passwords));

              SVN_ERR(svn_config_get_yes_no_ask
                (servers, &store_plaintext_passwords, server_group,
                 SVN_CONFIG_OPTION_STORE_PLAINTEXT_PASSWORDS,
                 store_plaintext_passwords));

              SVN_ERR(svn_config_get_bool
                (servers, &store_pp,
                 server_group, SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP,
                 store_pp));

              SVN_ERR(svn_config_get_yes_no_ask
                (servers, &store_pp_plaintext, server_group,
                 SVN_CONFIG_OPTION_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT,
                 store_pp_plaintext));
            }
        }
    }


  if (! store_passwords)
    svn_auth_set_parameter(ab, SVN_AUTH_PARAM_DONT_STORE_PASSWORDS, "");

  svn_auth_set_parameter(ab,
                         SVN_AUTH_PARAM_STORE_PLAINTEXT_PASSWORDS,
                         store_plaintext_passwords);

  if (! store_pp)
    svn_auth_set_parameter(ab,
                           SVN_AUTH_PARAM_DONT_STORE_SSL_CLIENT_CERT_PP,
                           "");

  svn_auth_set_parameter(ab,
                         SVN_AUTH_PARAM_STORE_SSL_CLIENT_CERT_PP_PLAINTEXT,
                         store_pp_plaintext);

  if (! store_auth_creds)
    svn_auth_set_parameter(ab, SVN_AUTH_PARAM_NO_AUTH_CACHE, "");

  if (server_group)
    svn_auth_set_parameter(ab,
                           SVN_AUTH_PARAM_SERVER_GROUP,
                           apr_pstrdup(ab->pool, server_group));

  *session_auth_baton = ab;

  return SVN_NO_ERROR;
}
