
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_auth_cred_ssl_client_cert_pw_t ;
struct TYPE_4__ {int prompt_baton; int (* prompt_func ) (int **,int ,char const*,int,int *) ;} ;
typedef TYPE_1__ ssl_client_cert_pw_prompt_provider_baton_t ;
struct TYPE_5__ {scalar_t__ retries; int realmstring; TYPE_1__* pb; } ;
typedef TYPE_2__ ssl_client_cert_pw_prompt_iter_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_PARAM_NO_AUTH_CACHE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int stub1 (int **,int ,char const*,int,int *) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
ssl_client_cert_pw_prompt_first_cred(void **credentials_p,
                                     void **iter_baton,
                                     void *provider_baton,
                                     apr_hash_t *parameters,
                                     const char *realmstring,
                                     apr_pool_t *pool)
{
  ssl_client_cert_pw_prompt_provider_baton_t *pb = provider_baton;
  ssl_client_cert_pw_prompt_iter_baton_t *ib =
    apr_pcalloc(pool, sizeof(*ib));
  const char *no_auth_cache = svn_hash_gets(parameters,
                                            SVN_AUTH_PARAM_NO_AUTH_CACHE);

  SVN_ERR(pb->prompt_func((svn_auth_cred_ssl_client_cert_pw_t **)
                          credentials_p, pb->prompt_baton, realmstring,
                          ! no_auth_cache, pool));

  ib->pb = pb;
  ib->realmstring = apr_pstrdup(pool, realmstring);
  ib->retries = 0;
  *iter_baton = ib;

  return SVN_NO_ERROR;
}
