
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_CONFIG_AUTHN_PASSWORD_KEY ;
 int SVN_CONFIG_AUTHN_USERNAME_KEY ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ strcmp (char*,char const*) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;

svn_error_t *
svn_auth__simple_password_get(svn_boolean_t *done,
                              const char **password,
                              apr_hash_t *creds,
                              const char *realmstring,
                              const char *username,
                              apr_hash_t *parameters,
                              svn_boolean_t non_interactive,
                              apr_pool_t *pool)
{
  svn_string_t *str;

  *done = FALSE;

  str = svn_hash_gets(creds, SVN_CONFIG_AUTHN_USERNAME_KEY);
  if (str && username && strcmp(str->data, username) == 0)
    {
      str = svn_hash_gets(creds, SVN_CONFIG_AUTHN_PASSWORD_KEY);
      if (str && str->data)
        {
          *password = str->data;
          *done = TRUE;
        }
    }

  return SVN_NO_ERROR;
}
