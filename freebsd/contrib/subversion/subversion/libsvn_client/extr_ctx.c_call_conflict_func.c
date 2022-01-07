
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_wc_conflict_result_t ;
typedef int svn_wc_conflict_description_t ;
typedef int svn_wc_conflict_description2_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int conflict_baton; int (* conflict_func ) (int **,int const*,int ,int *) ;} ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int **,int const*,int ,int *) ;
 int * svn_wc__cd2_to_cd (int const*,int *) ;
 int svn_wc_conflict_choose_postpone ;
 int * svn_wc_create_conflict_result (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
call_conflict_func(svn_wc_conflict_result_t **result,
                   const svn_wc_conflict_description2_t *conflict,
                   void *baton,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_client_ctx_t *ctx = baton;

  if (ctx->conflict_func)
    {
      const svn_wc_conflict_description_t *cd;

      cd = svn_wc__cd2_to_cd(conflict, scratch_pool);
      SVN_ERR(ctx->conflict_func(result, cd, ctx->conflict_baton,
                                 result_pool));
    }
  else
    {

      *result = svn_wc_create_conflict_result(svn_wc_conflict_choose_postpone,
                                              ((void*)0), result_pool);
    }

  return SVN_NO_ERROR;
}
