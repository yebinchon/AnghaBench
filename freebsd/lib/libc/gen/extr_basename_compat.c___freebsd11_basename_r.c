
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 size_t MAXPATHLEN ;
 int errno ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
__freebsd11_basename_r(const char *path, char *bname)
{
 const char *endp, *startp;
 size_t len;


 if (path == ((void*)0) || *path == '\0') {
  bname[0] = '.';
  bname[1] = '\0';
  return (bname);
 }


 endp = path + strlen(path) - 1;
 while (endp > path && *endp == '/')
  endp--;


 if (endp == path && *endp == '/') {
  bname[0] = '/';
  bname[1] = '\0';
  return (bname);
 }


 startp = endp;
 while (startp > path && *(startp - 1) != '/')
  startp--;

 len = endp - startp + 1;
 if (len >= MAXPATHLEN) {
  errno = ENAMETOOLONG;
  return (((void*)0));
 }
 memcpy(bname, startp, len);
 bname[len] = '\0';
 return (bname);
}
