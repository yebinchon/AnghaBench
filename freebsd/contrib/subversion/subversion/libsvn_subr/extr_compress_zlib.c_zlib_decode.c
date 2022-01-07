
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; scalar_t__* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;


 int SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA ;
 int * SVN_NO_ERROR ;
 int Z_OK ;
 int _ (char*) ;
 int memcpy (scalar_t__*,unsigned char const*,int) ;
 unsigned char* svn__decode_uint (int*,unsigned char const*,unsigned char const*) ;
 int svn_error__wrap_zlib (int,char*,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_stringbuf_ensure (TYPE_1__*,int) ;
 int uncompress (unsigned char*,unsigned long*,unsigned char const*,int) ;

__attribute__((used)) static svn_error_t *
zlib_decode(const unsigned char *in, apr_size_t inLen, svn_stringbuf_t *out,
            apr_size_t limit)
{
  apr_size_t len;
  apr_uint64_t size;
  const unsigned char *oldplace = in;


  in = svn__decode_uint(&size, in, in + inLen);
  len = (apr_size_t)size;
  if (in == ((void*)0) || len != size)
    return svn_error_create(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, ((void*)0),
                            _("Decompression of zlib compressed data failed: no size"));
  if (len > limit)
    return svn_error_create(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, ((void*)0),
                            _("Decompression of zlib compressed data failed: "
                              "size too large"));



  inLen -= (in - oldplace);
  if (inLen == len)
    {
      svn_stringbuf_ensure(out, len);
      memcpy(out->data, in, len);
      out->data[len] = 0;
      out->len = len;

      return SVN_NO_ERROR;
    }
  else
    {
      unsigned long zlen = len;
      int zerr;

      svn_stringbuf_ensure(out, len);
      zerr = uncompress((unsigned char *)out->data, &zlen, in, inLen);
      if (zerr != Z_OK)
        return svn_error_trace(svn_error__wrap_zlib(
                                 zerr, "uncompress",
                                 _("Decompression of svndiff data failed")));



      if (zlen != len)
        return svn_error_create(SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA,
                                ((void*)0),
                                _("Size of uncompressed data "
                                  "does not match stored original length"));
      out->data[zlen] = 0;
      out->len = zlen;
    }
  return SVN_NO_ERROR;
}
