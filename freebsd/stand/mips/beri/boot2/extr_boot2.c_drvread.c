
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;




 int altera_sdcard_read (void*,unsigned int,unsigned int) ;
 int cfi_read (void*,unsigned int,unsigned int) ;
 TYPE_1__ dsk ;

__attribute__((used)) static int
drvread(void *buf, unsigned lba, unsigned nblk)
{


 switch (dsk.type) {
 case 129:
  return (cfi_read(buf, lba, nblk));

 case 128:
  return (altera_sdcard_read(buf, lba, nblk));

 default:
  return (-1);
 }
}
