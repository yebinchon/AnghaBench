
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc_add_from_disk3 (int *,char const*,int const*,int ,int ,void*,int *) ;

svn_error_t *
svn_wc_add_from_disk2(svn_wc_context_t *wc_ctx,
                     const char *local_abspath,
                     const apr_hash_t *props,
                     svn_wc_notify_func2_t notify_func,
                     void *notify_baton,
                     apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc_add_from_disk3(wc_ctx, local_abspath, props, FALSE,
                                 notify_func, notify_baton, scratch_pool));
  return SVN_NO_ERROR;
}
