
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_cmdline_prompt_baton2_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {char const* cert_file; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_ssl_client_cert_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int maybe_print_realm (char const*,int *) ;
 int prompt (char const**,int ,int ,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;

svn_error_t *
svn_cmdline_auth_ssl_client_cert_prompt
  (svn_auth_cred_ssl_client_cert_t **cred_p,
   void *baton,
   const char *realm,
   svn_boolean_t may_save,
   apr_pool_t *pool)
{
  svn_auth_cred_ssl_client_cert_t *cred = ((void*)0);
  const char *cert_file = ((void*)0);
  const char *abs_cert_file = ((void*)0);
  svn_cmdline_prompt_baton2_t *pb = baton;

  SVN_ERR(maybe_print_realm(realm, pool));
  SVN_ERR(prompt(&cert_file, _("Client certificate filename: "),
                 FALSE, pb, pool));
  SVN_ERR(svn_dirent_get_absolute(&abs_cert_file, cert_file, pool));

  cred = apr_palloc(pool, sizeof(*cred));
  cred->cert_file = abs_cert_file;
  cred->may_save = may_save;
  *cred_p = cred;

  return SVN_NO_ERROR;
}
