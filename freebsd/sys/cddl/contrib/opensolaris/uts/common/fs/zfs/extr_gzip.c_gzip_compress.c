
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ Z_OK ;
 int bcopy (void*,void*,size_t) ;
 scalar_t__ z_compress_level (void*,size_t*,void*,size_t,int) ;

size_t
gzip_compress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 size_t dstlen = d_len;

 ASSERT(d_len <= s_len);

 if (z_compress_level(d_start, &dstlen, s_start, s_len, n) != Z_OK) {
  if (d_len != s_len)
   return (s_len);

  bcopy(s_start, d_start, s_len);
  return (s_len);
 }

 return (dstlen);
}
