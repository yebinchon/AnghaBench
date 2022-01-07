
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ALTERA_SDCARD_SECTORSIZE ;
 scalar_t__ altera_sdcard_read_block (int *,unsigned int) ;
 int printf (char*,int) ;

int
altera_sdcard_read(void *buf, unsigned lba, unsigned nblk)
{
 uint8_t *bufp = buf;
 int i;

 for (i = 0; i < nblk; i++) {
  if (altera_sdcard_read_block(bufp + i *
      ALTERA_SDCARD_SECTORSIZE, lba + i) < 0) {
   printf("SD Card: block read %u failed\n", i);
   return (-1);
  }
 }
 return (0);
}
