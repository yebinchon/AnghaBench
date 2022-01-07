
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_status3_t ;
typedef int svn_wc_status2_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * backwards_compatibility_baton; } ;
typedef TYPE_1__ svn_client_status_t ;
struct status4_wrapper_baton {int old_baton; int * (* old_func ) (int ,char const*,int *,int *) ;int wc_ctx; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * stub1 (int ,char const*,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_wc__status2_from_3 (int **,int const*,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
status4_wrapper_func(void *baton,
                     const char *path,
                     const svn_client_status_t *status,
                     apr_pool_t *scratch_pool)
{
  struct status4_wrapper_baton *swb = baton;
  svn_wc_status2_t *dup;
  const char *local_abspath;
  const svn_wc_status3_t *wc_status = status->backwards_compatibility_baton;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));
  SVN_ERR(svn_wc__status2_from_3(&dup, wc_status, swb->wc_ctx,
                                 local_abspath, scratch_pool,
                                 scratch_pool));

  return (*swb->old_func)(swb->old_baton, path, dup, scratch_pool);
}
