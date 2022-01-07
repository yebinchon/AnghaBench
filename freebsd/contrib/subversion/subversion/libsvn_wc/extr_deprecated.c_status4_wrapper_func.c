
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status3_t ;
typedef int svn_wc_status2_t ;
typedef int svn_error_t ;
struct status4_wrapper_baton {int old_baton; int * (* old_func ) (int ,char const*,int *,int *) ;int * anchor_abspath; int anchor_relpath; int wc_ctx; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * stub1 (int ,char const*,int *,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_dirent_skip_ancestor (int *,char const*) ;
 int svn_wc__status2_from_3 (int **,int const*,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
status4_wrapper_func(void *baton,
                     const char *local_abspath,
                     const svn_wc_status3_t *status,
                     apr_pool_t *scratch_pool)
{
  struct status4_wrapper_baton *swb = baton;
  svn_wc_status2_t *dup;
  const char *path = local_abspath;

  SVN_ERR(svn_wc__status2_from_3(&dup, status, swb->wc_ctx, local_abspath,
                                 scratch_pool, scratch_pool));

  if (swb->anchor_abspath != ((void*)0))
    {
      path = svn_dirent_join(
                swb->anchor_relpath,
                svn_dirent_skip_ancestor(swb->anchor_abspath, local_abspath),
                scratch_pool);
    }

  return (*swb->old_func)(swb->old_baton, path, dup, scratch_pool);
}
