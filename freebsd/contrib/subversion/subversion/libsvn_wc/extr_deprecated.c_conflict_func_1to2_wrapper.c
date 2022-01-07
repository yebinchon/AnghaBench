
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_result_t ;
typedef int svn_wc_conflict_description_t ;
typedef int svn_wc_conflict_description2_t ;
typedef int svn_error_t ;
struct conflict_func_1to2_baton {int inner_baton; int (* inner_func ) (int **,int *,int ,int *) ;} ;
typedef int apr_pool_t ;


 int stub1 (int **,int *,int ,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_wc__cd2_to_cd (int const*,int *) ;

__attribute__((used)) static svn_error_t *
conflict_func_1to2_wrapper(svn_wc_conflict_result_t **result,
                           const svn_wc_conflict_description2_t *conflict,
                           void *baton,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  struct conflict_func_1to2_baton *btn = baton;
  svn_wc_conflict_description_t *cd = svn_wc__cd2_to_cd(conflict,
                                                        scratch_pool);

  return svn_error_trace(btn->inner_func(result, cd, btn->inner_baton,
                                         result_pool));
}
