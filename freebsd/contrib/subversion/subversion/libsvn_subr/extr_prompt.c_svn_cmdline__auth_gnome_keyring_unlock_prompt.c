
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_cmdline_prompt_baton2_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 char* apr_psprintf (int *,int ,char const*) ;
 char* apr_pstrdup (int *,char const*) ;
 int prompt (char const**,char const*,int ,int *,int *) ;

svn_error_t *
svn_cmdline__auth_gnome_keyring_unlock_prompt(char **keyring_password,
                                              const char *keyring_name,
                                              void *baton,
                                              apr_pool_t *pool)
{
  const char *password;
  const char *pass_prompt;
  svn_cmdline_prompt_baton2_t *pb = baton;

  pass_prompt = apr_psprintf(pool, _("Password for '%s' GNOME keyring: "),
                             keyring_name);
  SVN_ERR(prompt(&password, pass_prompt, TRUE, pb, pool));
  *keyring_password = apr_pstrdup(pool, password);
  return SVN_NO_ERROR;
}
