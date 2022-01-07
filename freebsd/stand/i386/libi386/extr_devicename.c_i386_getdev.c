
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_devdesc {int dummy; } ;


 char const* getenv (char*) ;
 int i386_parsedev (struct i386_devdesc**,char const*,char const**) ;
 int * strchr (char const*,char) ;

int
i386_getdev(void **vdev, const char *devspec, const char **path)
{
    struct i386_devdesc **dev = (struct i386_devdesc **)vdev;
    int rv;





    if ((devspec == ((void*)0)) ||
 (devspec[0] == '/') ||
 (strchr(devspec, ':') == ((void*)0))) {

 if (((rv = i386_parsedev(dev, getenv("currdev"), ((void*)0))) == 0) &&
     (path != ((void*)0)))
  *path = devspec;
 return(rv);
    }




    return(i386_parsedev(dev, devspec, path));
}
