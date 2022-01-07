
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_contents_same2 (int *,int ,int ,int *) ;
 int svn_stream_disown (int *,int *) ;

svn_error_t *
svn_stream_contents_same(svn_boolean_t *same,
                         svn_stream_t *stream1,
                         svn_stream_t *stream2,
                         apr_pool_t *pool)
{
  return svn_error_trace(svn_stream_contents_same2(
                           same,
                           svn_stream_disown(stream1, pool),
                           svn_stream_disown(stream2, pool),
                           pool));
}
