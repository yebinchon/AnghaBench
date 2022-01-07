
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 char* __freebsd11_basename_r (char*,char*) ;
 scalar_t__ malloc (int ) ;

char *
__freebsd11_basename(char *path)
{
 static char *bname = ((void*)0);

 if (bname == ((void*)0)) {
  bname = (char *)malloc(MAXPATHLEN);
  if (bname == ((void*)0))
   return (((void*)0));
 }
 return (__freebsd11_basename_r(path, bname));
}
