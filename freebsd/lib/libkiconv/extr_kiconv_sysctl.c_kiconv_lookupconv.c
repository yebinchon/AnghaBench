
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOMEM ;
 int errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strlen (char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

int
kiconv_lookupconv(const char *drvname)
{
 size_t size;

 if (sysctlbyname("kern.iconv.drvlist", ((void*)0), &size, ((void*)0), 0) == -1)
  return (errno);
 if (size > 0) {
  char *drivers, *drvp;

  drivers = malloc(size);
  if (drivers == ((void*)0))
   return (ENOMEM);
  if (sysctlbyname("kern.iconv.drvlist", drivers, &size, ((void*)0), 0) == -1) {
   free(drivers);
   return (errno);
  }
  for (drvp = drivers; *drvp != '\0'; drvp += strlen(drvp) + 1)
   if (strcmp(drvp, drvname) == 0) {
    free(drivers);
    return (0);
   }
 }
 return (ENOENT);
}
