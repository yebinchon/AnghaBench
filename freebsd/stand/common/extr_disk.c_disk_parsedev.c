
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_unit; } ;
struct disk_devdesc {int d_slice; int d_partition; TYPE_1__ dd; } ;


 int D_PARTISGPT ;
 int D_PARTNONE ;
 int D_PARTWILD ;
 int D_SLICENONE ;
 int D_SLICEWILD ;
 int EINVAL ;
 int EPART ;
 int ESLICE ;
 int EUNIT ;
 char* strchr (char const*,char) ;
 int strtol (char const*,char**,int) ;

int
disk_parsedev(struct disk_devdesc *dev, const char *devspec, const char **path)
{
 int unit, slice, partition;
 const char *np;
 char *cp;

 np = devspec;
 unit = -1;






 if ((cp = strchr(np, ':')) != ((void*)0) && cp[1] != '\0') {
  slice = D_SLICEWILD;
  partition = D_PARTWILD;
 } else {
  slice = D_SLICENONE;
  partition = D_PARTNONE;
 }

 if (*np != '\0' && *np != ':') {
  unit = strtol(np, &cp, 10);
  if (cp == np)
   return (EUNIT);
  if (*cp != '\0' && *cp != ':') {
   partition = *cp - 'a';
   if (partition < 0)
    return (EPART);
   cp++;
  }
 } else
  return (EINVAL);

 if (*cp != '\0' && *cp != ':')
  return (EINVAL);
 dev->dd.d_unit = unit;
 dev->d_slice = slice;
 dev->d_partition = partition;
 if (path != ((void*)0))
  *path = (*cp == '\0') ? cp: cp + 1;
 return (0);
}
