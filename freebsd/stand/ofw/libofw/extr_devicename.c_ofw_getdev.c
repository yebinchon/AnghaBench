
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_devdesc {int dummy; } ;


 char const* getenv (char*) ;
 int ofw_parsedev (struct ofw_devdesc**,char const*,char const**) ;
 int * strchr (char const*,char) ;

int
ofw_getdev(void **vdev, const char *devspec, const char **path)
{
    struct ofw_devdesc **dev = (struct ofw_devdesc **)vdev;
    int rv;





    if ((devspec == ((void*)0)) ||
 ((strchr(devspec, '@') == ((void*)0)) &&
 (strchr(devspec, ':') == ((void*)0)))) {

 if (((rv = ofw_parsedev(dev, getenv("currdev"), ((void*)0))) == 0) &&
     (path != ((void*)0)))
  *path = devspec;
 return(rv);
    }




    return(ofw_parsedev(dev, devspec, path));
}
