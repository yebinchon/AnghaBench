
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ Z_OK ;
 scalar_t__ z_uncompress (void*,size_t*,void*,size_t) ;

int
gzip_decompress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 size_t dstlen = d_len;

 ASSERT(d_len >= s_len);

 if (z_uncompress(d_start, &dstlen, s_start, s_len) != Z_OK)
  return (-1);

 return (0);
}
