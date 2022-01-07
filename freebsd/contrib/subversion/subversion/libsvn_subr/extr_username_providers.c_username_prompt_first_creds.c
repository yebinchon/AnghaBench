
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int username_prompt_provider_baton_t ;
struct TYPE_3__ {scalar_t__ retries; } ;
typedef TYPE_1__ username_prompt_iter_baton_t ;
typedef int svn_error_t ;
typedef int svn_auth_cred_username_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_PARAM_NO_AUTH_CACHE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int prompt_for_username_creds (int **,int *,int *,char const*,int ,int,int *) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
username_prompt_first_creds(void **credentials_p,
                            void **iter_baton,
                            void *provider_baton,
                            apr_hash_t *parameters,
                            const char *realmstring,
                            apr_pool_t *pool)
{
  username_prompt_provider_baton_t *pb = provider_baton;
  username_prompt_iter_baton_t *ibaton = apr_pcalloc(pool, sizeof(*ibaton));
  const char *no_auth_cache = svn_hash_gets(parameters,
                                            SVN_AUTH_PARAM_NO_AUTH_CACHE);

  SVN_ERR(prompt_for_username_creds
          ((svn_auth_cred_username_t **) credentials_p, pb,
           parameters, realmstring, TRUE, ! no_auth_cache, pool));

  ibaton->retries = 0;
  *iter_baton = ibaton;

  return SVN_NO_ERROR;
}
