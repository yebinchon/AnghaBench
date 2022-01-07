
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; scalar_t__* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int LZ4_MAX_INPUT_SIZE ;
 int LZ4_compressBound (int) ;
 int LZ4_compress_default (void const*,scalar_t__*,int,int) ;
 int SVN_ERR_LZ4_COMPRESSION_FAILED ;
 int * SVN_NO_ERROR ;
 int SVN__MAX_ENCODED_UINT_LEN ;
 int assert (int) ;
 unsigned char* svn__encode_uint (unsigned char*,int ) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,void const*,int) ;
 int svn_stringbuf_ensure (TYPE_1__*,int) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;

svn_error_t *
svn__compress_lz4(const void *data, apr_size_t len,
                  svn_stringbuf_t *out)
{
  apr_size_t hdrlen;
  unsigned char buf[SVN__MAX_ENCODED_UINT_LEN];
  unsigned char *p;
  int compressed_data_len;
  int max_compressed_data_len;

  assert(len <= LZ4_MAX_INPUT_SIZE);

  p = svn__encode_uint(buf, (apr_uint64_t)len);
  hdrlen = p - buf;
  max_compressed_data_len = LZ4_compressBound((int)len);
  svn_stringbuf_setempty(out);
  svn_stringbuf_ensure(out, max_compressed_data_len + hdrlen);
  svn_stringbuf_appendbytes(out, (const char *)buf, hdrlen);
  compressed_data_len = LZ4_compress_default(data, out->data + out->len,
                                             (int)len, max_compressed_data_len);
  if (!compressed_data_len)
    return svn_error_create(SVN_ERR_LZ4_COMPRESSION_FAILED, ((void*)0), ((void*)0));

  if (compressed_data_len >= (int)len)
    {

      svn_stringbuf_appendbytes(out, data, len);
    }
  else
    {
      out->len += compressed_data_len;
      out->data[out->len] = 0;
    }

  return SVN_NO_ERROR;
}
