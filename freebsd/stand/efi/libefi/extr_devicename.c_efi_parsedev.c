
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfs_devdesc {int dummy; } ;
struct disk_devdesc {int dummy; } ;
struct devsw {char const* dv_name; int dv_type; } ;
struct devdesc {int d_unit; struct devsw* d_dev; } ;





 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EUNIT ;
 struct devsw** devsw ;
 int disk_parsedev (struct disk_devdesc*,char const*,char const**) ;
 int errno ;
 int free (struct devdesc*) ;
 struct devdesc* malloc (int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 int strtol (char const*,char**,int ) ;
 int zfs_parsedev (struct zfs_devdesc*,char const*,char const**) ;

__attribute__((used)) static int
efi_parsedev(struct devdesc **dev, const char *devspec, const char **path)
{
 struct devdesc *idev;
 struct devsw *dv;
 int i, unit, err;
 char *cp;
 const char *np;


 if (strlen(devspec) < 2)
  return (EINVAL);


 for (i = 0; devsw[i] != ((void*)0); i++) {
  dv = devsw[i];
  if (!strncmp(devspec, dv->dv_name, strlen(dv->dv_name)))
   break;
 }
 if (devsw[i] == ((void*)0))
  return (ENOENT);

 np = devspec + strlen(dv->dv_name);
 idev = ((void*)0);
 err = 0;

 switch (dv->dv_type) {
 case 129:
  break;

 case 130:
  idev = malloc(sizeof(struct disk_devdesc));
  if (idev == ((void*)0))
   return (ENOMEM);

  err = disk_parsedev((struct disk_devdesc *)idev, np, path);
  if (err != 0)
   goto fail;
  break;
 default:
  idev = malloc(sizeof(struct devdesc));
  if (idev == ((void*)0))
   return (ENOMEM);

  unit = 0;
  cp = (char *)np;

  if (*np != '\0' && *np != ':') {
   errno = 0;
   unit = strtol(np, &cp, 0);
   if (errno != 0 || cp == np) {
    err = EUNIT;
    goto fail;
   }
  }
  if (*cp != '\0' && *cp != ':') {
   err = EINVAL;
   goto fail;
  }

  idev->d_unit = unit;
  if (path != ((void*)0))
   *path = (*cp == 0) ? cp : cp + 1;
  break;
 }

 idev->d_dev = dv;

 if (dev != ((void*)0))
  *dev = idev;
 else
  free(idev);
 return (0);

fail:
 free(idev);
 return (err);
}
