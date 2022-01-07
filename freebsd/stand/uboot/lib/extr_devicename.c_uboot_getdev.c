
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uboot_devdesc {int dummy; } ;


 char const* getenv (char*) ;
 int * strchr (char const*,char) ;
 int uboot_parsedev (struct uboot_devdesc**,char const*,char const**) ;

int
uboot_getdev(void **vdev, const char *devspec, const char **path)
{
 struct uboot_devdesc **dev = (struct uboot_devdesc **)vdev;
 int rv;





 if ((devspec == ((void*)0)) || (devspec[0] == '/') ||
     (strchr(devspec, ':') == ((void*)0))) {

  if (((rv = uboot_parsedev(dev, getenv("currdev"), ((void*)0))) == 0)
      && (path != ((void*)0)))
  *path = devspec;
  return(rv);
 }




 return (uboot_parsedev(dev, devspec, path));
}
