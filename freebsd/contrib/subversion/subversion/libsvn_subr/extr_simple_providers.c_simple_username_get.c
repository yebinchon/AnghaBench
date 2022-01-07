
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_CONFIG_AUTHN_USERNAME_KEY ;
 int TRUE ;
 TYPE_1__* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_boolean_t
simple_username_get(const char **username,
                    apr_hash_t *creds,
                    const char *realmstring,
                    svn_boolean_t non_interactive)
{
  svn_string_t *str;
  str = svn_hash_gets(creds, SVN_CONFIG_AUTHN_USERNAME_KEY);
  if (str && str->data)
    {
      *username = str->data;
      return TRUE;
    }
  return FALSE;
}
