
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int freelist (char**) ;
 char* icpyalloc (char*) ;
 int * istrstr (char*,char*) ;
 scalar_t__ realloc (char*,int) ;

__attribute__((used)) static char **
enlist (char **cpp, char *new, size_t len)
{
  int i, j;

  if (cpp == ((void*)0))
    return ((void*)0);
  if ((new = icpyalloc(new)) == ((void*)0))
    {
      freelist(cpp);
      return ((void*)0);
    }
  new[len] = '\0';

  for (i = 0; cpp[i] != ((void*)0); ++i)
    if (istrstr(cpp[i], new) != ((void*)0))
      {
 free(new);
 return cpp;
      }

  j = 0;
  while (cpp[j] != ((void*)0))
    if (istrstr(new, cpp[j]) == ((void*)0))
      ++j;
    else
      {
 free(cpp[j]);
 if (--i == j)
   break;
 cpp[j] = cpp[i];
 cpp[i] = ((void*)0);
      }

  cpp = (char **) realloc((char *) cpp, (i + 2) * sizeof *cpp);
  if (cpp == ((void*)0))
    return ((void*)0);
  cpp[i] = new;
  cpp[i + 1] = ((void*)0);
  return cpp;
}
