
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 size_t MAXPATHLEN ;
 int errno ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int strlen (char*) ;

char *
__freebsd11_dirname(char *path)
{
 static char *dname = ((void*)0);
 size_t len;
 const char *endp;

 if (dname == ((void*)0)) {
  dname = (char *)malloc(MAXPATHLEN);
  if (dname == ((void*)0))
   return(((void*)0));
 }


 if (path == ((void*)0) || *path == '\0') {
  dname[0] = '.';
  dname[1] = '\0';
  return (dname);
 }


 endp = path + strlen(path) - 1;
 while (endp > path && *endp == '/')
  endp--;


 while (endp > path && *endp != '/')
  endp--;


 if (endp == path) {
  dname[0] = *endp == '/' ? '/' : '.';
  dname[1] = '\0';
  return (dname);
 } else {

  do {
   endp--;
  } while (endp > path && *endp == '/');
 }

 len = endp - path + 1;
 if (len >= MAXPATHLEN) {
  errno = ENAMETOOLONG;
  return (((void*)0));
 }
 memcpy(dname, path, len);
 dname[len] = '\0';
 return (dname);
}
