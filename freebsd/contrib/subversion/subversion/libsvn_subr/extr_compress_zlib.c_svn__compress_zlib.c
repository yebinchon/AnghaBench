
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR_BAD_COMPRESSION_METHOD ;
 int SVN__COMPRESSION_NONE ;
 int SVN__COMPRESSION_ZLIB_MAX ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int) ;
 int * zlib_encode (void const*,int ,int *,int) ;

svn_error_t *
svn__compress_zlib(const void *data, apr_size_t len,
                   svn_stringbuf_t *out,
                   int compression_method)
{
  if ( compression_method < SVN__COMPRESSION_NONE
      || compression_method > SVN__COMPRESSION_ZLIB_MAX)
    return svn_error_createf(SVN_ERR_BAD_COMPRESSION_METHOD, ((void*)0),
                             _("Unsupported compression method %d"),
                             compression_method);

  return zlib_encode(data, len, out, compression_method);
}
