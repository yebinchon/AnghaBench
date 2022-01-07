
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int skipvfs ;
 scalar_t__ strcmp (char const*,char const*) ;

int
checkvfsname(const char *vfsname, const char **vfslist)
{

 if (vfslist == ((void*)0))
  return (0);
 while (*vfslist != ((void*)0)) {
  if (strcmp(vfsname, *vfslist) == 0)
   return (skipvfs);
  ++vfslist;
 }
 return (!skipvfs);
}
