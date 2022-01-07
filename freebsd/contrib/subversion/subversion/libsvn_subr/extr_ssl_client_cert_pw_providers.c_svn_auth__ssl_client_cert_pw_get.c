
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
 int SVN_CONFIG_AUTHN_PASSPHRASE_KEY ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* svn_hash_gets (int *,int ) ;

svn_error_t *
svn_auth__ssl_client_cert_pw_get(svn_boolean_t *done,
                                 const char **passphrase,
                                 apr_hash_t *creds,
                                 const char *realmstring,
                                 const char *username,
                                 apr_hash_t *parameters,
                                 svn_boolean_t non_interactive,
                                 apr_pool_t *pool)
{
  svn_string_t *str;
  str = svn_hash_gets(creds, SVN_CONFIG_AUTHN_PASSPHRASE_KEY);
  if (str && str->data)
    {
      *passphrase = str->data;
      *done = TRUE;
      return SVN_NO_ERROR;
    }
  *done = FALSE;
  return SVN_NO_ERROR;
}
