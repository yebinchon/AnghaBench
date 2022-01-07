
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int svn_auth_ssl_server_cert_info_t ;
struct TYPE_4__ {int accepted_failures; int may_save; } ;
typedef TYPE_1__ svn_auth_cred_ssl_server_trust_t ;
struct trust_server_cert_non_interactive_baton {scalar_t__ trust_server_cert_other_failure; scalar_t__ trust_server_cert_not_yet_valid; scalar_t__ trust_server_cert_expired; scalar_t__ trust_server_cert_cn_mismatch; scalar_t__ trust_server_cert_unknown_ca; } ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_AUTH_SSL_CNMISMATCH ;
 int SVN_AUTH_SSL_EXPIRED ;
 int SVN_AUTH_SSL_NOTYETVALID ;
 int SVN_AUTH_SSL_OTHER ;
 int SVN_AUTH_SSL_UNKNOWNCA ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;

__attribute__((used)) static svn_error_t *
trust_server_cert_non_interactive(svn_auth_cred_ssl_server_trust_t **cred_p,
                                  void *baton,
                                  const char *realm,
                                  apr_uint32_t failures,
                                  const svn_auth_ssl_server_cert_info_t
                                    *cert_info,
                                  svn_boolean_t may_save,
                                  apr_pool_t *pool)
{
  struct trust_server_cert_non_interactive_baton *b = baton;
  apr_uint32_t non_ignored_failures;
  *cred_p = ((void*)0);


  non_ignored_failures = failures & ~(
        (b->trust_server_cert_unknown_ca ? SVN_AUTH_SSL_UNKNOWNCA : 0)
      | (b->trust_server_cert_cn_mismatch ? SVN_AUTH_SSL_CNMISMATCH : 0)
      | (b->trust_server_cert_expired ? SVN_AUTH_SSL_EXPIRED : 0)
      | (b->trust_server_cert_not_yet_valid ? SVN_AUTH_SSL_NOTYETVALID : 0)
      | (b->trust_server_cert_other_failure ? SVN_AUTH_SSL_OTHER : 0)
  );


  if (non_ignored_failures == 0)
    {
      *cred_p = apr_pcalloc(pool, sizeof(**cred_p));
      (*cred_p)->may_save = FALSE;
      (*cred_p)->accepted_failures = failures;
    }

  return SVN_NO_ERROR;
}
