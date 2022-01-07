
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; scalar_t__* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ INT_MAX ;
 int LZ4_decompress_safe (char const*,scalar_t__*,int,int) ;
 int SVN_ERR_LZ4_DECOMPRESSION_FAILED ;
 int SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA ;
 int * SVN_NO_ERROR ;
 int * _ (char*) ;
 int assert (int) ;
 int memcpy (scalar_t__*,unsigned char const*,int) ;
 unsigned char* svn__decode_uint (scalar_t__*,unsigned char const*,unsigned char const*) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_stringbuf_ensure (TYPE_1__*,int) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;

svn_error_t *
svn__decompress_lz4(const void *data, apr_size_t len,
                    svn_stringbuf_t *out,
                    apr_size_t limit)
{
  apr_size_t hdrlen;
  int compressed_data_len;
  int decompressed_data_len;
  apr_uint64_t u64;
  const unsigned char *p = data;
  int rv;

  assert(len <= INT_MAX);
  assert(limit <= INT_MAX);


  p = svn__decode_uint(&u64, p, p + len);
  if (p == ((void*)0))
    return svn_error_create(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, ((void*)0),
                            _("Decompression of compressed data failed: "
                              "no size"));
  if (u64 > limit)
    return svn_error_create(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, ((void*)0),
                            _("Decompression of compressed data failed: "
                              "size too large"));
  decompressed_data_len = (int)u64;
  hdrlen = p - (const unsigned char *)data;
  compressed_data_len = (int)(len - hdrlen);

  svn_stringbuf_setempty(out);
  svn_stringbuf_ensure(out, decompressed_data_len);

  if (compressed_data_len == decompressed_data_len)
    {

      memcpy(out->data, p, decompressed_data_len);
    }
  else
    {
      rv = LZ4_decompress_safe((const char *)p, out->data, compressed_data_len,
                               decompressed_data_len);
      if (rv < 0)
        return svn_error_create(SVN_ERR_LZ4_DECOMPRESSION_FAILED, ((void*)0), ((void*)0));

      if (rv != decompressed_data_len)
        return svn_error_create(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA,
                                ((void*)0),
                                _("Size of uncompressed data "
                                  "does not match stored original length"));
    }

  out->data[decompressed_data_len] = 0;
  out->len = decompressed_data_len;

  return SVN_NO_ERROR;
}
