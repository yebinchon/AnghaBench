
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bool
hostent_aliases_compare(char **aliases0, char **aliases1)
{
 int i0, i1;

 if (aliases0 == ((void*)0) && aliases1 == ((void*)0))
  return (1);
 if (aliases0 == ((void*)0) || aliases1 == ((void*)0))
  return (0);

 for (i0 = 0; aliases0[i0] != ((void*)0); i0++) {
  for (i1 = 0; aliases1[i1] != ((void*)0); i1++) {
   if (strcmp(aliases0[i0], aliases1[i1]) == 0)
    break;
  }
  if (aliases1[i1] == ((void*)0))
   return (0);
 }

 return (1);
}
