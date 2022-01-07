
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manpaths {int dummy; } ;


 int manpath_add (struct manpaths*,char*,char) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
manpath_parseline(struct manpaths *dirs, char *path, char option)
{
 char *dir;

 if (((void*)0) == path)
  return;

 for (dir = strtok(path, ":"); dir; dir = strtok(((void*)0), ":"))
  manpath_add(dirs, dir, option);
}
