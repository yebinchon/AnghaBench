
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_cmdline_prompt_baton2_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int may_save; int password; int username; } ;
typedef TYPE_1__ svn_auth_cred_simple_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char const* _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char* apr_psprintf (int *,char const*,int ) ;
 int apr_pstrdup (int *,char const*) ;
 int maybe_print_realm (char const*,int *) ;
 int prompt (int *,char const*,int ,int *,int *) ;

svn_error_t *
svn_cmdline_auth_simple_prompt(svn_auth_cred_simple_t **cred_p,
                               void *baton,
                               const char *realm,
                               const char *username,
                               svn_boolean_t may_save,
                               apr_pool_t *pool)
{
  svn_auth_cred_simple_t *ret = apr_pcalloc(pool, sizeof(*ret));
  const char *pass_prompt;
  svn_cmdline_prompt_baton2_t *pb = baton;

  SVN_ERR(maybe_print_realm(realm, pool));

  if (username)
    ret->username = apr_pstrdup(pool, username);
  else
    SVN_ERR(prompt(&(ret->username), _("Username: "), FALSE, pb, pool));

  pass_prompt = apr_psprintf(pool, _("Password for '%s': "), ret->username);
  SVN_ERR(prompt(&(ret->password), pass_prompt, TRUE, pb, pool));
  ret->may_save = may_save;
  *cred_p = ret;
  return SVN_NO_ERROR;
}
