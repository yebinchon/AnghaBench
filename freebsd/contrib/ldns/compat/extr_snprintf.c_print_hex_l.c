
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
print_hex_l(char* buf, int max, unsigned long value)
{
 const char* h = "0123456789abcdef";
 int i = 0;
 if(value == 0) {
  if(max > 0) {
   buf[0] = '0';
   i = 1;
  }
 } else while(value && i < max) {
  buf[i++] = h[value & 0x0f];
  value >>= 4;
 }
 return i;
}
