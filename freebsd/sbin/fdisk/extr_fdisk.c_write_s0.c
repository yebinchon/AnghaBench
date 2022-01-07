
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bootinst_size; int * bootinst; int * parts; } ;


 int DOSMAGIC ;
 size_t DOSMAGICOFFSET ;
 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int NDOSPART ;
 int dos_partition_enc (int *,int *) ;
 scalar_t__ iotest ;
 int le16enc (int *,int ) ;
 TYPE_1__ mboot ;
 int print_s0 () ;
 int secsize ;
 int warn (char*) ;
 int write_disk (int,int *) ;

__attribute__((used)) static int
write_s0()
{
 int sector, i;

 if (iotest) {
  print_s0();
  return 0;
 }
 for(i = 0; i < NDOSPART; i++)
  dos_partition_enc(&mboot.bootinst[DOSPARTOFF + i * DOSPARTSIZE],
      &mboot.parts[i]);
 le16enc(&mboot.bootinst[DOSMAGICOFFSET], DOSMAGIC);
 for(sector = 0; sector < mboot.bootinst_size / secsize; sector++)
  if (write_disk(sector,
          &mboot.bootinst[sector * secsize]) == -1) {
   warn("can't write fdisk partition table");
   return -1;
  }
 return(0);
}
