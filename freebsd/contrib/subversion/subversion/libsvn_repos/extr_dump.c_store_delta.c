
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_SET ;
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_fs_get_file_delta_stream (int **,int *,char const*,int *,char const*,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_file_get_offset (scalar_t__*,int *,int *) ;
 int * svn_io_file_seek (int *,int ,scalar_t__*,int *) ;
 int svn_io_open_unique_file3 (int **,int *,int *,int ,int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;
 int svn_txdelta_send_txstream (int *,int ,void*,int *) ;
 int svn_txdelta_to_svndiff3 (int *,void**,int *,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
store_delta(apr_file_t **tempfile, svn_filesize_t *len,
            svn_fs_root_t *oldroot, const char *oldpath,
            svn_fs_root_t *newroot, const char *newpath, apr_pool_t *pool)
{
  svn_stream_t *temp_stream;
  apr_off_t offset;
  svn_txdelta_stream_t *delta_stream;
  svn_txdelta_window_handler_t wh;
  void *whb;



  SVN_ERR(svn_io_open_unique_file3(tempfile, ((void*)0), ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   pool, pool));
  temp_stream = svn_stream_from_aprfile2(*tempfile, TRUE, pool);


  SVN_ERR(svn_fs_get_file_delta_stream(&delta_stream, oldroot, oldpath,
                                       newroot, newpath, pool));
  svn_txdelta_to_svndiff3(&wh, &whb, temp_stream, 0,
                          SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, pool);
  SVN_ERR(svn_txdelta_send_txstream(delta_stream, wh, whb, pool));


  SVN_ERR(svn_io_file_get_offset(&offset, *tempfile, pool));
  *len = offset;
  offset = 0;
  return svn_io_file_seek(*tempfile, APR_SET, &offset, pool);
}
