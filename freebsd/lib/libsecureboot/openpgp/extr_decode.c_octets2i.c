
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
octets2i(unsigned char *ptr, size_t n)
{
 size_t i;
 int val;

 for (val = i = 0; i < n; i++) {
  val |= (*ptr++ << ((n - i - 1) * 8));
 }
 return (val);
}
