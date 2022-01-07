
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned char *
i2octets(int n, size_t i)
{
 static unsigned char o[16];
 int x, j;

 if (n > 15)
  return (((void*)0));
 for (j = 0, x = n - 1; x >= 0; x--, j++) {
  o[j] = (unsigned char)((i & (0xff << x * 8)) >> x * 8);
 }
 return (o);
}
