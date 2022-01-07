
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef char svn_config_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {char const* password; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_ssl_client_cert_pw_t ;
typedef int (* svn_auth__password_get_t ) (int *,char const**,int *,char const*,int *,int *,int ,int *) ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_AUTH_CRED_SSL_CLIENT_CERT_PW ;
 int SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ;
 int SVN_AUTH_PARAM_CONFIG_DIR ;
 int SVN_AUTH_PARAM_NON_INTERACTIVE ;
 int SVN_AUTH_PARAM_SERVER_GROUP ;
 int SVN_CONFIG_OPTION_SSL_CLIENT_CERT_PASSWORD ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 char* svn_config_get_server_setting (char*,char const*,int ,int *) ;
 int * svn_config_read_auth_data (int **,int ,char const*,char const*,int *) ;
 int svn_error_clear (int *) ;
 char* svn_hash_gets (int *,int ) ;

svn_error_t *
svn_auth__ssl_client_cert_pw_cache_get(void **credentials_p,
                                       void **iter_baton,
                                       void *provider_baton,
                                       apr_hash_t *parameters,
                                       const char *realmstring,
                                       svn_auth__password_get_t passphrase_get,
                                       const char *passtype,
                                       apr_pool_t *pool)
{
  svn_config_t *cfg = svn_hash_gets(parameters,
                                    SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS);
  const char *server_group = svn_hash_gets(parameters,
                                           SVN_AUTH_PARAM_SERVER_GROUP);
  svn_boolean_t non_interactive = svn_hash_gets(parameters,
                                                SVN_AUTH_PARAM_NON_INTERACTIVE)
      != ((void*)0);
  const char *password =
    svn_config_get_server_setting(cfg, server_group,
                                  SVN_CONFIG_OPTION_SSL_CLIENT_CERT_PASSWORD,
                                  ((void*)0));
  if (! password)
    {
      svn_error_t *err;
      apr_hash_t *creds_hash = ((void*)0);
      const char *config_dir = svn_hash_gets(parameters,
                                             SVN_AUTH_PARAM_CONFIG_DIR);


      err = svn_config_read_auth_data(&creds_hash,
                                      SVN_AUTH_CRED_SSL_CLIENT_CERT_PW,
                                      realmstring, config_dir, pool);
      svn_error_clear(err);
      if (! err && creds_hash)
        {
          svn_boolean_t done;

          SVN_ERR(passphrase_get(&done, &password, creds_hash, realmstring,
                                 ((void*)0), parameters, non_interactive, pool));
          if (!done)
            password = ((void*)0);
        }
    }

  if (password)
    {
      svn_auth_cred_ssl_client_cert_pw_t *cred
        = apr_palloc(pool, sizeof(*cred));
      cred->password = password;
      cred->may_save = FALSE;
      *credentials_p = cred;
    }
  else *credentials_p = ((void*)0);
  *iter_baton = ((void*)0);
  return SVN_NO_ERROR;
}
