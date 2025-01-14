
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int EINVAL ;
 int MSR_BITMAP_ACCESS_READ ;
 int MSR_BITMAP_ACCESS_WRITE ;

int
msr_bitmap_change_access(char *bitmap, u_int msr, int access)
{
 int byte, bit;

 if (msr <= 0x00001FFF)
  byte = msr / 8;
 else if (msr >= 0xC0000000 && msr <= 0xC0001FFF)
  byte = 1024 + (msr - 0xC0000000) / 8;
 else
  return (EINVAL);

 bit = msr & 0x7;

 if (access & MSR_BITMAP_ACCESS_READ)
  bitmap[byte] &= ~(1 << bit);
 else
  bitmap[byte] |= 1 << bit;

 byte += 2048;
 if (access & MSR_BITMAP_ACCESS_WRITE)
  bitmap[byte] &= ~(1 << bit);
 else
  bitmap[byte] |= 1 << bit;

 return (0);
}
