
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



const u8 * mschapv2_remove_domain(const u8 *username, size_t *len)
{
 size_t i;







 for (i = 0; i < *len; i++) {
  if (username[i] == '\\') {
   *len -= i + 1;
   return username + i + 1;
  }
 }

 return username;
}
