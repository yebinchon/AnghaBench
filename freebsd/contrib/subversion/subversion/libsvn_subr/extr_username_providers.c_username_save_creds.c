
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {int username; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_simple_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_AUTH_CRED_USERNAME ;
 int SVN_AUTH_PARAM_CONFIG_DIR ;
 int SVN_CONFIG_AUTHN_USERNAME_KEY ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int * svn_config_write_auth_data (int *,int ,char const*,char const*,int *) ;
 int svn_error_clear (int *) ;
 char* svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_string_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
username_save_creds(svn_boolean_t *saved,
                    void *credentials,
                    void *provider_baton,
                    apr_hash_t *parameters,
                    const char *realmstring,
                    apr_pool_t *pool)
{
  svn_auth_cred_simple_t *creds = credentials;
  apr_hash_t *creds_hash = ((void*)0);
  const char *config_dir;
  svn_error_t *err;

  *saved = FALSE;

  if (! creds->may_save)
    return SVN_NO_ERROR;

  config_dir = svn_hash_gets(parameters, SVN_AUTH_PARAM_CONFIG_DIR);


  creds_hash = apr_hash_make(pool);
  svn_hash_sets(creds_hash, SVN_CONFIG_AUTHN_USERNAME_KEY,
                svn_string_create(creds->username, pool));
  err = svn_config_write_auth_data(creds_hash, SVN_AUTH_CRED_USERNAME,
                                   realmstring, config_dir, pool);
  svn_error_clear(err);
  *saved = ! err;

  return SVN_NO_ERROR;
}
