
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;


 int * zlib_decode (void const*,int ,int *,int ) ;

svn_error_t *
svn__decompress_zlib(const void *data, apr_size_t len,
                     svn_stringbuf_t *out,
                     apr_size_t limit)
{
  return zlib_decode(data, len, out, limit);
}
