
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXDEWEY ;
 int isdigit (char) ;
 int strtol (char*,char**,int) ;

int
getdewey(int dewey[], char *cp)
{
 int i, n;

 for (n = 0, i = 0; i < MAXDEWEY; i++) {
  if (*cp == '\0')
   break;

  if (*cp == '.') cp++;
  if (!isdigit(*cp))
   return 0;

  dewey[n++] = strtol(cp, &cp, 10);
 }

 return n;
}
