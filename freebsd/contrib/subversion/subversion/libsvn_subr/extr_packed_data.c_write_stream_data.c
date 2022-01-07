
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;


 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn__compress_zlib (int ,int ,TYPE_1__*,int ) ;
 int svn_stream_write (int *,int ,int *) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;
 int write_stream_uint (int *,int ) ;

__attribute__((used)) static svn_error_t *
write_stream_data(svn_stream_t *stream,
                  svn_stringbuf_t *uncompressed,
                  svn_stringbuf_t *compressed)
{
  SVN_ERR(svn__compress_zlib(uncompressed->data, uncompressed->len,
                             compressed,
                             SVN_DELTA_COMPRESSION_LEVEL_DEFAULT));

  SVN_ERR(write_stream_uint(stream, compressed->len));
  SVN_ERR(svn_stream_write(stream, compressed->data, &compressed->len));

  svn_stringbuf_setempty(uncompressed);
  svn_stringbuf_setempty(compressed);

  return SVN_NO_ERROR;
}
