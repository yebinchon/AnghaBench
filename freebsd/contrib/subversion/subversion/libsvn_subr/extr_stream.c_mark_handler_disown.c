
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_stream_mark (void*,int **,int *) ;

__attribute__((used)) static svn_error_t *
mark_handler_disown(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  return svn_error_trace(svn_stream_mark(baton, mark, pool));
}
