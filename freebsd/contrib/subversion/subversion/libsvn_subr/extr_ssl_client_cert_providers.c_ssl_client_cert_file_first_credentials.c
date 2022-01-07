
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_3__ {char const* cert_file; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_ssl_client_cert_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ;
 int SVN_AUTH_PARAM_SERVER_GROUP ;
 int SVN_CONFIG_OPTION_SSL_CLIENT_CERT_FILE ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 char* svn_config_get_server_setting (int *,char const*,int ,int *) ;
 void* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
ssl_client_cert_file_first_credentials(void **credentials_p,
                                       void **iter_baton,
                                       void *provider_baton,
                                       apr_hash_t *parameters,
                                       const char *realmstring,
                                       apr_pool_t *pool)
{
  svn_config_t *cfg = svn_hash_gets(parameters,
                                    SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS);
  const char *server_group = svn_hash_gets(parameters,
                                           SVN_AUTH_PARAM_SERVER_GROUP);
  const char *cert_file;

  cert_file =
    svn_config_get_server_setting(cfg, server_group,
                                  SVN_CONFIG_OPTION_SSL_CLIENT_CERT_FILE,
                                  ((void*)0));

  if (cert_file != ((void*)0))
    {
      svn_auth_cred_ssl_client_cert_t *cred =
        apr_palloc(pool, sizeof(*cred));

      cred->cert_file = cert_file;
      cred->may_save = FALSE;
      *credentials_p = cred;
    }
  else
    {
      *credentials_p = ((void*)0);
    }

  *iter_baton = ((void*)0);
  return SVN_NO_ERROR;
}
