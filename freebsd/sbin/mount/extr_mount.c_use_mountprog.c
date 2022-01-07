
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * mountprog ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
use_mountprog(const char *vfstype)
{




 unsigned int i;
 const char *fs[] = {
 "cd9660", "mfs", "msdosfs", "nfs",
 "nullfs", "smbfs", "udf", "unionfs",
 ((void*)0)
 };

 if (mountprog != ((void*)0))
  return (1);

 for (i = 0; fs[i] != ((void*)0); ++i) {
  if (strcmp(vfstype, fs[i]) == 0)
   return (1);
 }

 return (0);
}
