
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
dummy_handler_set_fulltext(svn_stream_t **stream,
                               void *node_baton)
{
  return SVN_NO_ERROR;
}
