
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXDEWEY ;
 scalar_t__ _bcs_strtol (char*,char**,int) ;

__attribute__((used)) static int
_getdewey(int dewey[], char *cp)
{
 int i, n;

 for (n = 0, i = 0; i < MAXDEWEY; i++) {
  if (*cp == '\0')
   break;

  if (*cp == '.') cp++;
  if (*cp < '0' || '9' < *cp)
   return (0);

  dewey[n++] = (int)_bcs_strtol(cp, &cp, 10);
 }

 return (n);
}
