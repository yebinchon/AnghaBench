
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_copy3 (int ,int ,int ,void*,int *) ;
 int svn_stream_disown (int *,int *) ;

svn_error_t *svn_stream_copy2(svn_stream_t *from, svn_stream_t *to,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_stream_copy3(
                           svn_stream_disown(from, scratch_pool),
                           svn_stream_disown(to, scratch_pool),
                           cancel_func, cancel_baton, scratch_pool));
}
