
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static long
bsd_to_linux_ftype(const char *fstypename)
{
 int i;
 static struct {const char *bsd_name; long linux_type;} b2l_tbl[] = {
  {"ufs", 129},
  {"zfs", 128},
  {"cd9660", 136},
  {"nfs", 133},
  {"ext2fs", 138},
  {"procfs", 131},
  {"msdosfs", 135},
  {"ntfs", 132},
  {"nwfs", 134},
  {"hpfs", 137},
  {"coda", 140},
  {"devfs", 139},
  {"tmpfs", 130},
  {((void*)0), 0L}};

 for (i = 0; b2l_tbl[i].bsd_name != ((void*)0); i++)
  if (strcmp(b2l_tbl[i].bsd_name, fstypename) == 0)
   return (b2l_tbl[i].linux_type);

 return (0L);
}
