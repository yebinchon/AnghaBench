
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** enlist (char**,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static char **
addlists (char **old, char **new)
{
  int i;

  if (old == ((void*)0) || new == ((void*)0))
    return ((void*)0);
  for (i = 0; new[i] != ((void*)0); ++i)
    {
      old = enlist(old, new[i], strlen(new[i]));
      if (old == ((void*)0))
 break;
    }
  return old;
}
