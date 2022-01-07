
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_wc_cleanup4 (int *,char const*,int ,int ,int ,int ,int ,void*,int *,int *,int *) ;

svn_error_t *
svn_wc_cleanup3(svn_wc_context_t *wc_ctx,
                const char *local_abspath,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  return svn_error_trace(
            svn_wc_cleanup4(wc_ctx,
                            local_abspath,
                            TRUE ,
                            TRUE ,
                            TRUE ,
                            TRUE ,
                            cancel_func, cancel_baton,
                            ((void*)0), ((void*)0) ,
                            scratch_pool));
}
