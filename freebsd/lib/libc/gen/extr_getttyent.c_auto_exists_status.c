
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int TTY_IFEXISTS ;
 int TTY_ON ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int
auto_exists_status(const char *ty_name)
{
 struct stat sb;
 char *dev;
 int rv;

 rv = TTY_IFEXISTS;
 if (*ty_name == '/')
  asprintf(&dev, "%s", ty_name);
 else
  asprintf(&dev, "/dev/%s", ty_name);
 if (dev != ((void*)0) && stat(dev, &sb) == 0)
  rv |= TTY_ON;
 free(dev);
 return (rv);
}
