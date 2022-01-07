
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_ctrl_char (char) ;
 int os_memcpy (char*,void const*,size_t) ;

void p2p_copy_filter_devname(char *dst, size_t dst_len,
        const void *src, size_t src_len)
{
 size_t i;

 if (src_len >= dst_len)
  src_len = dst_len - 1;
 os_memcpy(dst, src, src_len);
 dst[src_len] = '\0';
 for (i = 0; i < src_len; i++) {
  if (dst[i] == '\0')
   break;
  if (is_ctrl_char(dst[i]))
   dst[i] = '_';
 }
}
