
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_status2_t ;
typedef int svn_error_t ;
struct status3_wrapper_baton {int old_baton; int (* old_func ) (int ,char const*,int *) ;} ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
status3_wrapper_func(void *baton,
                     const char *path,
                     svn_wc_status2_t *status,
                     apr_pool_t *pool)
{
  struct status3_wrapper_baton *swb = baton;

  swb->old_func(swb->old_baton, path, status);
  return SVN_NO_ERROR;
}
