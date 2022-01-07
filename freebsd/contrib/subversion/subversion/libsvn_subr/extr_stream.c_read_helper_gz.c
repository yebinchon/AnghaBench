
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uInt ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int Z_SYNC_FLUSH ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
read_helper_gz(svn_stream_t *substream,
               char *buffer,
               uInt *len, int *zflush)
{
  uInt orig_len = *len;



  apr_size_t apr_len = (apr_size_t) *len;

  SVN_ERR(svn_stream_read_full(substream, buffer, &apr_len));



  *len = (uInt) apr_len;



  *zflush = (*len) < orig_len ? Z_SYNC_FLUSH : Z_SYNC_FLUSH;

  return SVN_NO_ERROR;
}
