
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** remountable_fs_names ;
 scalar_t__ strcmp (char const*,char const*) ;

int
isremountable(const char *vfsname)
{
 const char **cp;

 for (cp = remountable_fs_names; *cp; cp++)
  if (strcmp(*cp, vfsname) == 0)
   return (1);
 return (0);
}
