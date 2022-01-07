
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {char const* username; int may_save; } ;
typedef TYPE_2__ svn_auth_cred_simple_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_CRED_USERNAME ;
 int SVN_AUTH_PARAM_CONFIG_DIR ;
 int SVN_AUTH_PARAM_DEFAULT_USERNAME ;
 int SVN_CONFIG_AUTHN_USERNAME_KEY ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int * svn_config_read_auth_data (int **,int ,char const*,char const*,int *) ;
 int svn_error_clear (int *) ;
 void* svn_hash_gets (int *,int ) ;
 char* svn_user_get_name (int *) ;

__attribute__((used)) static svn_error_t *
username_first_creds(void **credentials,
                     void **iter_baton,
                     void *provider_baton,
                     apr_hash_t *parameters,
                     const char *realmstring,
                     apr_pool_t *pool)
{
  const char *config_dir = svn_hash_gets(parameters,
                                         SVN_AUTH_PARAM_CONFIG_DIR);
  const char *username = svn_hash_gets(parameters,
                                       SVN_AUTH_PARAM_DEFAULT_USERNAME);
  svn_boolean_t may_save = !! username;
  svn_error_t *err;


  if (! username)
    {
      apr_hash_t *creds_hash = ((void*)0);






      err = svn_config_read_auth_data(&creds_hash, SVN_AUTH_CRED_USERNAME,
                                      realmstring, config_dir, pool);
      svn_error_clear(err);
      if (! err && creds_hash)
        {
          svn_string_t *str = svn_hash_gets(creds_hash,
                                            SVN_CONFIG_AUTHN_USERNAME_KEY);
          if (str && str->data)
            username = str->data;
        }
    }


  if (! username)
    username = svn_user_get_name(pool);

  if (username)
    {
      svn_auth_cred_simple_t *creds = apr_pcalloc(pool, sizeof(*creds));
      creds->username = username;
      creds->may_save = may_save;
      *credentials = creds;
    }
  else
    *credentials = ((void*)0);

  *iter_baton = ((void*)0);

  return SVN_NO_ERROR;
}
