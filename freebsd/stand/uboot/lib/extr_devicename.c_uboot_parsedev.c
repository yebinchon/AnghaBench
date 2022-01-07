
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_unit; struct devsw* d_dev; } ;
struct uboot_devdesc {TYPE_1__ dd; } ;
struct disk_devdesc {int dummy; } ;
struct devsw {char const* dv_name; int dv_type; } ;





 int EINVAL ;
 int ENOENT ;
 int EUNIT ;
 struct devsw** devsw ;
 int disk_parsedev (struct disk_devdesc*,char const*,char const**) ;
 int free (struct uboot_devdesc*) ;
 struct uboot_devdesc* malloc (int) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int
uboot_parsedev(struct uboot_devdesc **dev, const char *devspec,
    const char **path)
{
 struct uboot_devdesc *idev;
 struct devsw *dv;
 char *cp;
 const char *np;
 int i, unit, err;


 if (strlen(devspec) < 2)
  return(EINVAL);


 for (i = 0, dv = ((void*)0); devsw[i] != ((void*)0); i++) {
  if (!strncmp(devspec, devsw[i]->dv_name,
      strlen(devsw[i]->dv_name))) {
   dv = devsw[i];
   break;
  }
 }
 if (dv == ((void*)0))
  return(ENOENT);
 idev = malloc(sizeof(struct uboot_devdesc));
 err = 0;
 np = (devspec + strlen(dv->dv_name));

 switch(dv->dv_type) {
 case 128:
  break;
 case 129:
  unit = 0;

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
 return (0);

fail:
 free(idev);
 return (err);
}
