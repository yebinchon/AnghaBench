
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOVERFLOW ;
 scalar_t__ SSIZE_MAX ;
 int errno ;
 size_t p2roundup (size_t) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static inline int
expandtofit(char ** __restrict linep, size_t len, size_t * __restrict capp)
{
 char *newline;
 size_t newcap;

 if (len > (size_t)SSIZE_MAX + 1) {
  errno = EOVERFLOW;
  return (-1);
 }
 if (len > *capp) {
  if (len == (size_t)SSIZE_MAX + 1)
   newcap = (size_t)SSIZE_MAX + 1;
  else
   newcap = p2roundup(len);
  newline = realloc(*linep, newcap);
  if (newline == ((void*)0))
   return (-1);
  *capp = newcap;
  *linep = newline;
 }
 return (0);
}
