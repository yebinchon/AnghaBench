
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_auth_cred_simple_t ;
struct TYPE_4__ {scalar_t__ retry_limit; } ;
typedef TYPE_1__ simple_prompt_provider_baton_t ;
struct TYPE_5__ {scalar_t__ retries; } ;
typedef TYPE_2__ simple_prompt_iter_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_AUTH_PARAM_NO_AUTH_CACHE ;
 int * SVN_NO_ERROR ;
 int * prompt_for_simple_creds (int **,TYPE_1__*,int *,char const*,int ,int,int *) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
simple_prompt_next_creds(void **credentials_p,
                         void *iter_baton,
                         void *provider_baton,
                         apr_hash_t *parameters,
                         const char *realmstring,
                         apr_pool_t *pool)
{
  simple_prompt_iter_baton_t *ib = iter_baton;
  simple_prompt_provider_baton_t *pb = provider_baton;
  const char *no_auth_cache = svn_hash_gets(parameters,
                                            SVN_AUTH_PARAM_NO_AUTH_CACHE);

  if ((pb->retry_limit >= 0) && (ib->retries >= pb->retry_limit))
    {

      *credentials_p = ((void*)0);
      return SVN_NO_ERROR;
    }
  ib->retries++;

  return prompt_for_simple_creds((svn_auth_cred_simple_t **) credentials_p,
                                 pb, parameters, realmstring, FALSE,
                                 ! no_auth_cache, pool);
}
