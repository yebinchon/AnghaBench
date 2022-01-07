
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int * itoa64 ;

void
_crypt_to64(char *s, u_long v, int n)
{
 while (--n >= 0) {
  *s++ = itoa64[v&0x3f];
  v >>= 6;
 }
}
