
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int errno ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,size_t) ;

char *
rel2abs(const char *path, const char *base, char *result, const size_t size)
{
 const char *pp, *bp;



 const char *endp = result + size - 1;
 char *rp;
 size_t length;

 if (*path == '/') {
  if (strlen(path) >= size)
   goto erange;
  strcpy(result, path);
  goto finish;
 } else if (*base != '/' || !size) {
  errno = EINVAL;
  return (((void*)0));
 } else if (size == 1)
  goto erange;

 length = strlen(base);

 if (!strcmp(path, ".") || !strcmp(path, "./")) {
  if (length >= size)
   goto erange;
  strcpy(result, base);



  rp = result + length - 1;



  if (*rp == '/') {
   if (length > 1)
    *rp = 0;
  } else
   rp++;

  if (*++path == '/') {



   *rp++ = '/';
   if (rp > endp)
    goto erange;
   *rp = 0;
  }
  goto finish;
 }
 bp = base + length;
 if (*(bp - 1) == '/')
  --bp;



 for (pp = path; *pp && *pp == '.'; ) {
  if (!strncmp(pp, "../", 3)) {
   pp += 3;
   while (bp > base && *--bp != '/')
    ;
  } else if (!strncmp(pp, "./", 2)) {
   pp += 2;
  } else if (!strncmp(pp, "..\0", 3)) {
   pp += 2;
   while (bp > base && *--bp != '/')
    ;
  } else
   break;
 }



 length = bp - base;
 if (length >= size)
  goto erange;
 strncpy(result, base, length);
 rp = result + length;
 if (*pp || *(pp - 1) == '/' || length == 0)
  *rp++ = '/';
 if (rp + strlen(pp) > endp)
  goto erange;
 strcpy(rp, pp);
finish:
 return result;
erange:
 errno = ERANGE;
 return (((void*)0));
}
