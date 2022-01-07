
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; unsigned long blocksize; scalar_t__* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int MIN_COMPRESS_SIZE ;
 int * SVN_NO_ERROR ;
 int SVN__COMPRESSION_NONE ;
 int SVN__MAX_ENCODED_UINT_LEN ;
 int Z_OK ;
 int _ (char*) ;
 int compress2 (unsigned char*,unsigned long*,unsigned char const*,int,int) ;
 int svnCompressBound (int) ;
 unsigned char* svn__encode_uint (unsigned char*,int ) ;
 int svn_error__wrap_zlib (int,char*,int ) ;
 int * svn_error_trace (int ) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,int) ;
 int svn_stringbuf_ensure (TYPE_1__*,int) ;
 int svn_stringbuf_setempty (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
zlib_encode(const char *data,
            apr_size_t len,
            svn_stringbuf_t *out,
            int compression_level)
{
  unsigned long endlen;
  apr_size_t intlen;
  unsigned char buf[SVN__MAX_ENCODED_UINT_LEN], *p;

  svn_stringbuf_setempty(out);
  p = svn__encode_uint(buf, (apr_uint64_t)len);
  svn_stringbuf_appendbytes(out, (const char *)buf, p - buf);

  intlen = out->len;






  if (len < MIN_COMPRESS_SIZE || compression_level == SVN__COMPRESSION_NONE)
    {
      svn_stringbuf_appendbytes(out, data, len);
    }
  else
    {
      int zerr;

      svn_stringbuf_ensure(out, svnCompressBound(len) + intlen);
      endlen = out->blocksize;

      zerr = compress2((unsigned char *)out->data + intlen, &endlen,
                       (const unsigned char *)data, len,
                       compression_level);
      if (zerr != Z_OK)
        return svn_error_trace(svn_error__wrap_zlib(
                                 zerr, "compress2",
                                 _("Compression of svndiff data failed")));


      if (endlen >= len)
        {
          svn_stringbuf_appendbytes(out, data, len);
          return SVN_NO_ERROR;
        }
      out->len = endlen + intlen;
      out->data[out->len] = 0;
    }
  return SVN_NO_ERROR;
}
