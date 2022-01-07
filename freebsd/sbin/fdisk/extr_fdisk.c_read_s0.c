
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parts; int * bootinst; int bootinst_size; } ;


 scalar_t__ DOSMAGIC ;
 size_t DOSMAGICOFFSET ;
 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int NDOSPART ;
 int dos_partition_dec (int *,int *) ;
 int free (int *) ;
 scalar_t__ le16dec (int *) ;
 int * malloc (int ) ;
 TYPE_1__ mboot ;
 int read_disk (int ,int *) ;
 int secsize ;
 int warnx (char*) ;

__attribute__((used)) static int
read_s0()
{
 int i;

 mboot.bootinst_size = secsize;
 if (mboot.bootinst != ((void*)0))
  free(mboot.bootinst);
 if ((mboot.bootinst = malloc(mboot.bootinst_size)) == ((void*)0)) {
  warnx("unable to allocate buffer to read fdisk "
        "partition table");
  return -1;
 }
 if (read_disk(0, mboot.bootinst) == -1) {
  warnx("can't read fdisk partition table");
  return -1;
 }
 if (le16dec(&mboot.bootinst[DOSMAGICOFFSET]) != DOSMAGIC) {
  warnx("invalid fdisk partition table found");

  return -1;
 }
 for (i = 0; i < NDOSPART; i++)
  dos_partition_dec(
      &mboot.bootinst[DOSPARTOFF + i * DOSPARTSIZE],
      &mboot.parts[i]);
 return 0;
}
