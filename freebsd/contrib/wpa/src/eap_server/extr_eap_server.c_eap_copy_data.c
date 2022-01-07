
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int const*,size_t) ;

__attribute__((used)) static int eap_copy_data(u8 **dst, size_t *dst_len,
    const u8 *src, size_t src_len)
{
 if (src == ((void*)0))
  return -1;

 os_free(*dst);
 *dst = os_malloc(src_len);
 if (*dst) {
  os_memcpy(*dst, src, src_len);
  *dst_len = src_len;
  return 0;
 } else {
  *dst_len = 0;
  return -1;
 }
}
