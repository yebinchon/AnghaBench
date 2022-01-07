
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



int
l64a_r(long value, char *buffer, int buflen)
{
 static const char chars[] =
     "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
 uint32_t v;

 v = value;
 while (buflen-- > 0) {
  if (v == 0) {
   *buffer = '\0';
   return (0);
  }
  *buffer++ = chars[v & 0x3f];
  v >>= 6;
 }
 return (-1);
}
