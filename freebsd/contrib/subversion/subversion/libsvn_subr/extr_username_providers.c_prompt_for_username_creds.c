
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int prompt_baton; int (* prompt_func ) (TYPE_2__**,int ,char const*,scalar_t__,int *) ;} ;
typedef TYPE_1__ username_prompt_provider_baton_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_8__ {int may_save; int username; } ;
typedef TYPE_2__ svn_auth_cred_username_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_PARAM_DEFAULT_USERNAME ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_2__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int stub1 (TYPE_2__**,int ,char const*,scalar_t__,int *) ;
 char* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
prompt_for_username_creds(svn_auth_cred_username_t **cred_p,
                          username_prompt_provider_baton_t *pb,
                          apr_hash_t *parameters,
                          const char *realmstring,
                          svn_boolean_t first_time,
                          svn_boolean_t may_save,
                          apr_pool_t *pool)
{
  const char *def_username = ((void*)0);

  *cred_p = ((void*)0);


  if (first_time)
    def_username = svn_hash_gets(parameters, SVN_AUTH_PARAM_DEFAULT_USERNAME);







  if (def_username)
    {
      *cred_p = apr_palloc(pool, sizeof(**cred_p));
      (*cred_p)->username = apr_pstrdup(pool, def_username);
      (*cred_p)->may_save = TRUE;
    }
  else
    {
      SVN_ERR(pb->prompt_func(cred_p, pb->prompt_baton, realmstring,
                              may_save, pool));
    }

  return SVN_NO_ERROR;
}
