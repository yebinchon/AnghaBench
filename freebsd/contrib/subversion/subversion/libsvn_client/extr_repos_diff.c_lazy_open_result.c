
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
struct file_baton {int path_end_revision; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_stream_open_unique (int **,int *,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
lazy_open_result(svn_stream_t **stream,
                 void *baton,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct file_baton *fb = baton;

  SVN_ERR(svn_stream_open_unique(stream, &fb->path_end_revision, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
