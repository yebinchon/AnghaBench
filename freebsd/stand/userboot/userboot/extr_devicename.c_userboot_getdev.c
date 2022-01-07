
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_devdesc {int dummy; } ;


 char const* getenv (char*) ;
 int * strchr (char const*,char) ;
 int userboot_parsedev (struct disk_devdesc**,char const*,char const**) ;

int
userboot_getdev(void **vdev, const char *devspec, const char **path)
{
    struct disk_devdesc **dev = (struct disk_devdesc **)vdev;
    int rv;





    if ((devspec == ((void*)0)) ||
 (devspec[0] == '/') ||
 (strchr(devspec, ':') == ((void*)0))) {

 if (((rv = userboot_parsedev(dev, getenv("currdev"), ((void*)0))) == 0) &&
     (path != ((void*)0)))
  *path = devspec;
 return(rv);
    }




    return(userboot_parsedev(dev, devspec, path));
}
