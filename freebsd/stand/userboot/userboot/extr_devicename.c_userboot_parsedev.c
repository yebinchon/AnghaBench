
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfs_devdesc {int dummy; } ;
struct TYPE_2__ {int d_unit; struct devsw* d_dev; } ;
struct disk_devdesc {TYPE_1__ dd; } ;
struct devsw {char const* dv_name; int dv_type; } ;







 int EINVAL ;
 int ENOENT ;
 int EUNIT ;
 struct devsw** devsw ;
 int disk_parsedev (struct disk_devdesc*,char const*,char const**) ;
 int free (struct disk_devdesc*) ;
 struct disk_devdesc* malloc (int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 int strtol (char const*,char**,int ) ;
 int zfs_parsedev (struct zfs_devdesc*,char const*,char const**) ;

__attribute__((used)) static int
userboot_parsedev(struct disk_devdesc **dev, const char *devspec, const char **path)
{
    struct disk_devdesc *idev;
    struct devsw *dv;
    int i, unit, err;
    const char *cp;
    const char *np;


    if (strlen(devspec) < 2)
 return(EINVAL);


    for (i = 0, dv = ((void*)0); devsw[i] != ((void*)0); i++) {
 if (!strncmp(devspec, devsw[i]->dv_name, strlen(devsw[i]->dv_name))) {
     dv = devsw[i];
     break;
 }
    }
    if (dv == ((void*)0))
 return(ENOENT);
    idev = malloc(sizeof(struct disk_devdesc));
    err = 0;
    np = (devspec + strlen(dv->dv_name));

    switch(dv->dv_type) {
    case 129:
 break;

    case 131:
 err = disk_parsedev(idev, np, path);
 if (err != 0)
     goto fail;
 break;

    case 132:
    case 130:
 unit = 0;

 if (*np && (*np != ':')) {
     unit = strtol(np, (char **)&cp, 0);
     if (cp == np) {
  err = EUNIT;
  goto fail;
     }
 } else {
  cp = np;
 }
 if (*cp && (*cp != ':')) {
     err = EINVAL;
     goto fail;
 }

 idev->dd.d_unit = unit;
 if (path != ((void*)0))
     *path = (*cp == 0) ? cp : cp + 1;
 break;

    case 128:
    default:
 err = EINVAL;
 goto fail;
    }
    idev->dd.d_dev = dv;
    if (dev == ((void*)0)) {
 free(idev);
    } else {
 *dev = idev;
    }
    return(0);

 fail:
    free(idev);
    return(err);
}
