
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** main_name_list ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
match_main (char *soname)
{
  char **mainp;

  for (mainp = main_name_list; *mainp != ((void*)0); mainp++)
    {
      if (strcmp (soname, *mainp) == 0)
 return (1);
    }

  return (0);
}
