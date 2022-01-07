
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_auth_cred_ssl_client_cert_t ;
struct TYPE_4__ {scalar_t__ retries; int realmstring; TYPE_1__* pb; } ;
typedef TYPE_2__ ssl_client_cert_prompt_iter_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_3__ {scalar_t__ retry_limit; int prompt_baton; int * (* prompt_func ) (int **,int ,int ,int,int *) ;} ;


 int SVN_AUTH_PARAM_NO_AUTH_CACHE ;
 int * SVN_NO_ERROR ;
 int * stub1 (int **,int ,int ,int,int *) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
ssl_client_cert_prompt_next_cred(void **credentials_p,
                                 void *iter_baton,
                                 void *provider_baton,
                                 apr_hash_t *parameters,
                                 const char *realmstring,
                                 apr_pool_t *pool)
{
  ssl_client_cert_prompt_iter_baton_t *ib = iter_baton;
  const char *no_auth_cache = svn_hash_gets(parameters,
                                            SVN_AUTH_PARAM_NO_AUTH_CACHE);

  if ((ib->pb->retry_limit >= 0) && (ib->retries >= ib->pb->retry_limit))
    {

      *credentials_p = ((void*)0);
      return SVN_NO_ERROR;
    }
  ib->retries++;

  return ib->pb->prompt_func((svn_auth_cred_ssl_client_cert_t **)
                             credentials_p, ib->pb->prompt_baton,
                             ib->realmstring, ! no_auth_cache, pool);
}
