
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int errno ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

char *
abs2rel(const char *path, const char *base, char *result, const size_t size)
{
 const char *pp, *bp, *branch;



 const char *endp = result + size - 1;
 char *rp;

 if (*path != '/') {
  if (strlen(path) >= size)
   goto erange;
  strcpy(result, path);
  goto finish;
 } else if (*base != '/' || !size) {
  errno = EINVAL;
  return (((void*)0));
 } else if (size == 1)
  goto erange;



 branch = path;
 for (pp = path, bp = base; *pp && *bp && *pp == *bp; pp++, bp++)
  if (*pp == '/')
   branch = pp;
 if ((*pp == 0 || (*pp == '/' && *(pp + 1) == 0)) &&
     (*bp == 0 || (*bp == '/' && *(bp + 1) == 0))) {
  rp = result;
  *rp++ = '.';
  if (*pp == '/' || *(pp - 1) == '/')
   *rp++ = '/';
  if (rp > endp)
   goto erange;
  *rp = 0;
  goto finish;
 }
 if ((*pp == 0 && *bp == '/') || (*pp == '/' && *bp == 0))
  branch = pp;



 rp = result;
 for (bp = base + (branch - path); *bp; bp++)
  if (*bp == '/' && *(bp + 1) != 0) {
   if (rp + 3 > endp)
    goto erange;
   *rp++ = '.';
   *rp++ = '.';
   *rp++ = '/';
  }
 if (rp > endp)
  goto erange;
 *rp = 0;



 if (*branch) {
  if (rp + strlen(branch + 1) > endp)
   goto erange;
  strcpy(rp, branch + 1);
 } else
  *--rp = 0;
finish:
 return result;
erange:
 errno = ERANGE;
 return (((void*)0));
}
