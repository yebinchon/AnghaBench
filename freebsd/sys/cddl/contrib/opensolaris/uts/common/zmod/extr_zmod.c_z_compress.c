
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_DEFAULT_COMPRESSION ;
 int z_compress_level (void*,size_t*,void const*,size_t,int ) ;

int
z_compress(void *dst, size_t *dstlen, const void *src, size_t srclen)
{
 return (z_compress_level(dst, dstlen, src, srclen,
     Z_DEFAULT_COMPRESSION));
}
