
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
mark_handler_empty(void *baton, svn_stream_mark_t **mark, apr_pool_t *pool)
{
  *mark = ((void*)0);
  return SVN_NO_ERROR;
}
