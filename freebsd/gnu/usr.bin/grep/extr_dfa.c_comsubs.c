
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** enlist (char**,char*,size_t) ;
 scalar_t__ malloc (int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char **
comsubs (char *left, char *right)
{
  char **cpp;
  char *lcp;
  char *rcp;
  size_t i, len;

  if (left == ((void*)0) || right == ((void*)0))
    return ((void*)0);
  cpp = (char **) malloc(sizeof *cpp);
  if (cpp == ((void*)0))
    return ((void*)0);
  cpp[0] = ((void*)0);
  for (lcp = left; *lcp != '\0'; ++lcp)
    {
      len = 0;
      rcp = strchr (right, *lcp);
      while (rcp != ((void*)0))
 {
   for (i = 1; lcp[i] != '\0' && lcp[i] == rcp[i]; ++i)
     continue;
   if (i > len)
     len = i;
   rcp = strchr (rcp + 1, *lcp);
 }
      if (len == 0)
 continue;
      if ((cpp = enlist(cpp, lcp, len)) == ((void*)0))
 break;
    }
  return cpp;
}
