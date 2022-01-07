
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devdesc {int dummy; } ;


 int efi_parsedev (struct devdesc**,char const*,char const**) ;
 char const* getenv (char*) ;
 int strchr (char const*,char) ;

int
efi_getdev(void **vdev, const char *devspec, const char **path)
{
 struct devdesc **dev = (struct devdesc **)vdev;
 int rv;





 if (devspec == ((void*)0) || *devspec == '/' || !strchr(devspec, ':')) {
  rv = efi_parsedev(dev, getenv("currdev"), ((void*)0));
  if (rv == 0 && path != ((void*)0))
   *path = devspec;
  return (rv);
 }


 return (efi_parsedev(dev, devspec, path));
}
