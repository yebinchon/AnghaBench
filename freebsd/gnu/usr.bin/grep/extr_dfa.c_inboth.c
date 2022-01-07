
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** addlists (char**,char**) ;
 char** comsubs (char*,char*) ;
 int free (char**) ;
 int freelist (char**) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static char **
inboth (char **left, char **right)
{
  char **both;
  char **temp;
  int lnum, rnum;

  if (left == ((void*)0) || right == ((void*)0))
    return ((void*)0);
  both = (char **) malloc(sizeof *both);
  if (both == ((void*)0))
    return ((void*)0);
  both[0] = ((void*)0);
  for (lnum = 0; left[lnum] != ((void*)0); ++lnum)
    {
      for (rnum = 0; right[rnum] != ((void*)0); ++rnum)
 {
   temp = comsubs(left[lnum], right[rnum]);
   if (temp == ((void*)0))
     {
       freelist(both);
       return ((void*)0);
     }
   both = addlists(both, temp);
   freelist(temp);
   free(temp);
   if (both == ((void*)0))
     return ((void*)0);
 }
    }
  return both;
}
