
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* name_of_main ;

char *
main_name (void)
{
  if (name_of_main != ((void*)0))
    return name_of_main;
  else
    return "main";
}
