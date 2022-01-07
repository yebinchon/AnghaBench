
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
struct change_node {int contents_abspath; } ;
typedef int apr_pool_t ;


 int svn_io_file_del_on_pool_cleanup ;
 int * svn_stream_open_unique (int **,int *,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
open_delta_target(svn_stream_t **stream, void *baton,
                apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  struct change_node *change = baton;
  return svn_stream_open_unique(stream, &change->contents_abspath,
                                ((void*)0),
                                svn_io_file_del_on_pool_cleanup,
                                result_pool, scratch_pool);
}
