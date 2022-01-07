
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_t ;
typedef int svn_diff_fns_t ;
typedef int svn_diff_fns2_t ;
struct fns_wrapper_baton {int dummy; } ;
typedef int apr_pool_t ;


 int * svn_diff_diff3_2 (int **,struct fns_wrapper_baton*,int *,int *) ;
 int wrap_diff_fns (int **,struct fns_wrapper_baton**,int const*,void*,int *) ;

svn_error_t *
svn_diff_diff3(svn_diff_t **diff,
               void *diff_baton,
               const svn_diff_fns_t *vtable,
               apr_pool_t *pool)
{
  svn_diff_fns2_t *diff_fns2;
  struct fns_wrapper_baton *fwb;

  wrap_diff_fns(&diff_fns2, &fwb, vtable, diff_baton, pool);
  return svn_diff_diff3_2(diff, fwb, diff_fns2, pool);
}
