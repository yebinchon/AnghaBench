
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {int ascii_cert; } ;
typedef TYPE_1__ svn_auth_ssl_server_cert_info_t ;
struct TYPE_4__ {scalar_t__ accepted_failures; int may_save; } ;
typedef TYPE_2__ svn_auth_cred_ssl_server_trust_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_CRED_SSL_SERVER_TRUST ;
 int SVN_AUTH_PARAM_CONFIG_DIR ;
 int SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO ;
 int SVN_CONFIG_AUTHN_ASCII_CERT_KEY ;
 int SVN_CONFIG_AUTHN_FAILURES_KEY ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int svn_config_write_auth_data (int *,int ,char const*,char const*,int *) ;
 void* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_string_create (int ,int *) ;
 int svn_string_createf (int *,char*,unsigned long) ;

__attribute__((used)) static svn_error_t *
ssl_server_trust_file_save_credentials(svn_boolean_t *saved,
                                       void *credentials,
                                       void *provider_baton,
                                       apr_hash_t *parameters,
                                       const char *realmstring,
                                       apr_pool_t *pool)
{
  svn_auth_cred_ssl_server_trust_t *creds = credentials;
  const svn_auth_ssl_server_cert_info_t *cert_info;
  apr_hash_t *creds_hash = ((void*)0);
  const char *config_dir;

  if (! creds->may_save)
    return SVN_NO_ERROR;

  config_dir = svn_hash_gets(parameters, SVN_AUTH_PARAM_CONFIG_DIR);

  cert_info = svn_hash_gets(parameters, SVN_AUTH_PARAM_SSL_SERVER_CERT_INFO);

  creds_hash = apr_hash_make(pool);
  svn_hash_sets(creds_hash, SVN_CONFIG_AUTHN_ASCII_CERT_KEY,
                svn_string_create(cert_info->ascii_cert, pool));
  svn_hash_sets(creds_hash, SVN_CONFIG_AUTHN_FAILURES_KEY,
                svn_string_createf(pool, "%lu",
                                   (unsigned long)creds->accepted_failures));

  SVN_ERR(svn_config_write_auth_data(creds_hash,
                                     SVN_AUTH_CRED_SSL_SERVER_TRUST,
                                     realmstring,
                                     config_dir,
                                     pool));
  *saved = TRUE;
  return SVN_NO_ERROR;
}
