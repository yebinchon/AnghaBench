
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_cmdline_prompt_baton2_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {char const* password; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_ssl_client_cert_pw_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char* apr_psprintf (int *,int ,char const*) ;
 int prompt (char const**,char const*,int ,int *,int *) ;

svn_error_t *
svn_cmdline_auth_ssl_client_cert_pw_prompt
  (svn_auth_cred_ssl_client_cert_pw_t **cred_p,
   void *baton,
   const char *realm,
   svn_boolean_t may_save,
   apr_pool_t *pool)
{
  svn_auth_cred_ssl_client_cert_pw_t *cred = ((void*)0);
  const char *result;
  const char *text = apr_psprintf(pool, _("Passphrase for '%s': "), realm);
  svn_cmdline_prompt_baton2_t *pb = baton;

  SVN_ERR(prompt(&result, text, TRUE, pb, pool));

  cred = apr_pcalloc(pool, sizeof(*cred));
  cred->password = result;
  cred->may_save = may_save;
  *cred_p = cred;

  return SVN_NO_ERROR;
}
