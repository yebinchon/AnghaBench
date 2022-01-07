
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {int am_nextents; int am_syncmap; int am_diskmap; int am_memmap; } ;


 scalar_t__ bit_test (int ,int) ;
 int printf (char*,...) ;

void
activemap_dump(const struct activemap *amp)
{
 int bit;

 printf("M: ");
 for (bit = 0; bit < amp->am_nextents; bit++)
  printf("%d", bit_test(amp->am_memmap, bit) ? 1 : 0);
 printf("\n");
 printf("D: ");
 for (bit = 0; bit < amp->am_nextents; bit++)
  printf("%d", bit_test(amp->am_diskmap, bit) ? 1 : 0);
 printf("\n");
 printf("S: ");
 for (bit = 0; bit < amp->am_nextents; bit++)
  printf("%d", bit_test(amp->am_syncmap, bit) ? 1 : 0);
 printf("\n");
}
