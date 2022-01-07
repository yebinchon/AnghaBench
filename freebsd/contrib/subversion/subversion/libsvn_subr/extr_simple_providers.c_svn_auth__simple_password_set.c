
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_CONFIG_AUTHN_PASSWORD_KEY ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_string_create (char const*,int *) ;

svn_error_t *
svn_auth__simple_password_set(svn_boolean_t *done,
                              apr_hash_t *creds,
                              const char *realmstring,
                              const char *username,
                              const char *password,
                              apr_hash_t *parameters,
                              svn_boolean_t non_interactive,
                              apr_pool_t *pool)
{
  svn_hash_sets(creds, SVN_CONFIG_AUTHN_PASSWORD_KEY,
                svn_string_create(password, pool));
  *done = TRUE;

  return SVN_NO_ERROR;
}
