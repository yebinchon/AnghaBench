
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfs_devdesc {int dummy; } ;
struct TYPE_2__ {int d_unit; struct devsw* d_dev; } ;
struct i386_devdesc {TYPE_1__ dd; } ;
struct disk_devdesc {int dummy; } ;
struct devsw {char const* dv_name; int dv_type; } ;
struct devdesc {int dummy; } ;





 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EUNIT ;
 struct devsw** devsw ;
 int disk_parsedev (struct disk_devdesc*,char const*,char const**) ;
 int free (struct i386_devdesc*) ;
 struct i386_devdesc* malloc (int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 int strtol (char const*,char**,int ) ;
 int zfs_parsedev (struct zfs_devdesc*,char const*,char const**) ;

__attribute__((used)) static int
i386_parsedev(struct i386_devdesc **dev, const char *devspec, const char **path)
{
    struct i386_devdesc *idev;
    struct devsw *dv;
    int i, unit, err;
    char *cp;
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

    np = (devspec + strlen(dv->dv_name));
    idev = ((void*)0);
    err = 0;

    switch(dv->dv_type) {
    case 129:
 break;

    case 130:
 idev = malloc(sizeof(struct i386_devdesc));
 if (idev == ((void*)0))
     return (ENOMEM);

 err = disk_parsedev((struct disk_devdesc *)idev, np, path);
 if (err != 0)
     goto fail;
 break;

    case 128:
 idev = malloc(sizeof (struct zfs_devdesc));
 if (idev == ((void*)0))
     return (ENOMEM);

 err = zfs_parsedev((struct zfs_devdesc *)idev, np, path);
 if (err != 0)
     goto fail;
 break;

    default:
 idev = malloc(sizeof (struct devdesc));
 if (idev == ((void*)0))
     return (ENOMEM);

 unit = 0;
 cp = (char *)np;

 if (*np && (*np != ':')) {
     unit = strtol(np, &cp, 0);
     if (cp == np) {
  err = EUNIT;
  goto fail;
     }
 }

 if (*cp && (*cp != ':')) {
     err = EINVAL;
     goto fail;
 }

 idev->dd.d_unit = unit;
 if (path != ((void*)0))
     *path = (*cp == 0) ? cp : cp + 1;
 break;
    }
    idev->dd.d_dev = dv;
    if (dev != ((void*)0))
 *dev = idev;
    else
 free(idev);

    return(0);

 fail:
    free(idev);
    return(err);
}
