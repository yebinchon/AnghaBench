
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_CUR ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int read_window_header (int *,int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int * svn_io_file_seek (int *,int ,scalar_t__*,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_txdelta_skip_svndiff_window(apr_file_t *file,
                                int svndiff_version,
                                apr_pool_t *pool)
{
  svn_stream_t *stream = svn_stream_from_aprfile2(file, TRUE, pool);
  svn_filesize_t sview_offset;
  apr_size_t sview_len, tview_len, inslen, newlen, header_len;
  apr_off_t offset;

  SVN_ERR(read_window_header(stream, &sview_offset, &sview_len, &tview_len,
                             &inslen, &newlen, &header_len));

  offset = inslen + newlen;
  return svn_io_file_seek(file, APR_CUR, &offset, pool);
}
