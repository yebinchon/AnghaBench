
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int ntohl (int) ;
 int warning (char*,int,...) ;

int
check_classless_option(unsigned char *data, int len)
{
 int i = 0;
 unsigned char width;
 in_addr_t addr, mask;

 if (len < 5) {
  warning("Too small length: %d", len);
  return (0);
 }
 while(i < len) {
  width = data[i++];
  if (width == 0) {
   i += 4;
   continue;
  } else if (width < 9) {
   addr = (in_addr_t)(data[i] << 24);
   i += 1;
  } else if (width < 17) {
   addr = (in_addr_t)(data[i] << 24) +
    (in_addr_t)(data[i + 1] << 16);
   i += 2;
  } else if (width < 25) {
   addr = (in_addr_t)(data[i] << 24) +
    (in_addr_t)(data[i + 1] << 16) +
    (in_addr_t)(data[i + 2] << 8);
   i += 3;
  } else if (width < 33) {
   addr = (in_addr_t)(data[i] << 24) +
    (in_addr_t)(data[i + 1] << 16) +
    (in_addr_t)(data[i + 2] << 8) +
    data[i + 3];
   i += 4;
  } else {
   warning("Incorrect subnet width: %d", width);
   return (0);
  }
  mask = (in_addr_t)(~0) << (32 - width);
  addr = ntohl(addr);
  mask = ntohl(mask);
  if ((addr & mask) != addr) {
   addr &= mask;
   data[i - 1] = (unsigned char)(
    (addr >> (((32 - width)/8)*8)) & 0xFF);
  }
  i += 4;
 }
 if (i > len) {
  warning("Incorrect data length: %d (must be %d)", len, i);
  return (0);
 }
 return (1);
}
