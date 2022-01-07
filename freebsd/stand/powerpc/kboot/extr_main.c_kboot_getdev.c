
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devsw {int dv_name; } ;
struct devdesc {int d_opendata; scalar_t__ d_unit; struct devsw* d_dev; } ;


 int ENOENT ;
 struct devsw** devsw ;
 char* getenv (char*) ;
 struct devdesc* malloc (int) ;
 char* strchr (char const*,char) ;
 int strdup (char const*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

int
kboot_getdev(void **vdev, const char *devspec, const char **path)
{
 int i;
 const char *devpath, *filepath;
 struct devsw *dv;
 struct devdesc *desc;

 if (strchr(devspec, ':') != ((void*)0)) {
  devpath = devspec;
  filepath = strchr(devspec, ':') + 1;
 } else {
  devpath = getenv("currdev");
  filepath = devspec;
 }

 for (i = 0; (dv = devsw[i]) != ((void*)0); i++) {
  if (strncmp(dv->dv_name, devpath, strlen(dv->dv_name)) == 0)
   goto found;
 }
 return (ENOENT);

found:
 if (path != ((void*)0) && filepath != ((void*)0))
  *path = filepath;
 else if (path != ((void*)0))
  *path = strchr(devspec, ':') + 1;

 if (vdev != ((void*)0)) {
  desc = malloc(sizeof(*desc));
  desc->d_dev = dv;
  desc->d_unit = 0;
  desc->d_opendata = strdup(devpath);
  *vdev = desc;
 }

 return (0);
}
