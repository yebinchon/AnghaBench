
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_io_file_del_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_open_unique_file3 (int **,char const**,char const*,int ,int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_stream_open_unique(svn_stream_t **stream,
                       const char **temp_path,
                       const char *dirpath,
                       svn_io_file_del_t delete_when,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  apr_file_t *file;

  SVN_ERR(svn_io_open_unique_file3(&file, temp_path, dirpath,
                                   delete_when, result_pool, scratch_pool));
  *stream = svn_stream_from_aprfile2(file, FALSE, result_pool);

  return SVN_NO_ERROR;
}
