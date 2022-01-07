
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
print_dec_l(char* buf, int max, unsigned long value)
{
 int i = 0;
 if(value == 0) {
  if(max > 0) {
   buf[0] = '0';
   i = 1;
  }
 } else while(value && i < max) {
  buf[i++] = '0' + value % 10;
  value /= 10;
 }
 return i;
}
