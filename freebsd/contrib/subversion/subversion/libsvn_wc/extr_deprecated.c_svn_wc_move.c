
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_wc__move2 (int *,char const*,char const*,int ,int ,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_move(svn_wc_context_t *wc_ctx,
            const char *src_abspath,
            const char *dst_abspath,
            svn_boolean_t metadata_only,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            svn_wc_notify_func2_t notify_func,
            void *notify_baton,
            apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_wc__move2(wc_ctx, src_abspath, dst_abspath,
                                       metadata_only,
                                       TRUE,
                                       cancel_func, cancel_baton,
                                       notify_func, notify_baton,
                                       scratch_pool));
}
