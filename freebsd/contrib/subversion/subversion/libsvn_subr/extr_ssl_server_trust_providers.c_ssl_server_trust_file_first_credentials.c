
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int ascii_cert; } ;
typedef TYPE_2__ svn_auth_ssl_server_cert_info_t ;
struct TYPE_10__ {int may_save; } ;
typedef TYPE_3__ svn_auth_cred_ssl_server_trust_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_AUTH_CRED_SSL_SERVER_TRUST ;
 int SVN_AUTH_PARAM_CONFIG_DIR ;
 int SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO ;
 int SVN_AUTH_PARAM_SSL_SERVER_FAILURES ;
 int SVN_CONFIG_AUTHN_ASCII_CERT_KEY ;
 int SVN_CONFIG_AUTHN_FAILURES_KEY ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 int * svn_config_read_auth_data (int **,int ,char const*,char const*,int *) ;
 int svn_cstring_atoui (int*,int ) ;
 int svn_error_clear (int *) ;
 void* svn_hash_gets (int *,int ) ;
 scalar_t__ svn_string_compare (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* svn_string_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
ssl_server_trust_file_first_credentials(void **credentials,
                                        void **iter_baton,
                                        void *provider_baton,
                                        apr_hash_t *parameters,
                                        const char *realmstring,
                                        apr_pool_t *pool)
{
  apr_uint32_t *failures = svn_hash_gets(parameters,
                                         SVN_AUTH_PARAM_SSL_SERVER_FAILURES);
  const svn_auth_ssl_server_cert_info_t *cert_info =
    svn_hash_gets(parameters, SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO);
  apr_hash_t *creds_hash = ((void*)0);
  const char *config_dir;
  svn_error_t *error = SVN_NO_ERROR;

  *credentials = ((void*)0);
  *iter_baton = ((void*)0);


  config_dir = svn_hash_gets(parameters, SVN_AUTH_PARAM_CONFIG_DIR);
  error =
    svn_config_read_auth_data(&creds_hash, SVN_AUTH_CRED_SSL_SERVER_TRUST,
                              realmstring, config_dir, pool);
  svn_error_clear(error);
  if (! error && creds_hash)
    {
      svn_string_t *trusted_cert, *this_cert, *failstr;
      apr_uint32_t last_failures = 0;

      trusted_cert = svn_hash_gets(creds_hash, SVN_CONFIG_AUTHN_ASCII_CERT_KEY);
      this_cert = svn_string_create(cert_info->ascii_cert, pool);
      failstr = svn_hash_gets(creds_hash, SVN_CONFIG_AUTHN_FAILURES_KEY);

      if (failstr)
        SVN_ERR(svn_cstring_atoui(&last_failures, failstr->data));



      if (trusted_cert &&
          svn_string_compare(this_cert, trusted_cert) &&
          (*failures & ~last_failures) == 0)
        {
          *failures = 0;
        }
    }


  if (! *failures)
    {
      svn_auth_cred_ssl_server_trust_t *creds =
        apr_pcalloc(pool, sizeof(*creds));
      creds->may_save = FALSE;
      *credentials = creds;
    }

  return SVN_NO_ERROR;
}
