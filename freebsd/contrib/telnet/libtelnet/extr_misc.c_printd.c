
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned char const) ;

void
printd(const unsigned char *data, int cnt)
{
 if (cnt > 16)
  cnt = 16;
 while (cnt-- > 0) {
  printf(" %02x", *data);
  ++data;
 }
}
