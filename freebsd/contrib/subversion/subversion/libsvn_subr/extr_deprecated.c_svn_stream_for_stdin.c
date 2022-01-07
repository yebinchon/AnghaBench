
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_error_trace (int ) ;
 int svn_stream_for_stdin2 (int **,int ,int *) ;

svn_error_t *
svn_stream_for_stdin(svn_stream_t **in, apr_pool_t *pool)
{
  return svn_error_trace(svn_stream_for_stdin2(in, FALSE, pool));
}
