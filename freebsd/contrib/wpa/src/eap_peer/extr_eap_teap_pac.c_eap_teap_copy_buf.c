
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * os_memdup (int const*,size_t) ;

__attribute__((used)) static int eap_teap_copy_buf(u8 **dst, size_t *dst_len,
        const u8 *src, size_t src_len)
{
 if (src) {
  *dst = os_memdup(src, src_len);
  if (!(*dst))
   return -1;
  *dst_len = src_len;
 }
 return 0;
}
