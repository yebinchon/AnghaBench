
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_stream_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_SVNDIFF_UNEXPECTED_END ;
 int _ (char*) ;
 void* apr_palloc (int *,int) ;
 int * decode_window (int *,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,unsigned char*,int *,int) ;
 int read_window_header (int *,int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;

svn_error_t *
svn_txdelta_read_svndiff_window(svn_txdelta_window_t **window,
                                svn_stream_t *stream,
                                int svndiff_version,
                                apr_pool_t *pool)
{
  svn_filesize_t sview_offset;
  apr_size_t sview_len, tview_len, inslen, newlen, len, header_len;
  unsigned char *buf;

  SVN_ERR(read_window_header(stream, &sview_offset, &sview_len, &tview_len,
                             &inslen, &newlen, &header_len));
  len = inslen + newlen;
  buf = apr_palloc(pool, len);
  SVN_ERR(svn_stream_read_full(stream, (char*)buf, &len));
  if (len < inslen + newlen)
    return svn_error_create(SVN_ERR_SVNDIFF_UNEXPECTED_END, ((void*)0),
                            _("Unexpected end of svndiff input"));
  *window = apr_palloc(pool, sizeof(**window));
  return decode_window(*window, sview_offset, sview_len, tview_len, inslen,
                       newlen, buf, pool, svndiff_version);
}
