
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
set_digit(unsigned char *p, size_t s, int value)
{

 while (s--) {
  p[s] = '0' + (value % 10);
  value /= 10;
 }
}
