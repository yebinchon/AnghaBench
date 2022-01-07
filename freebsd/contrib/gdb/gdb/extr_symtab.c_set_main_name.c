
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * name_of_main ;
 int xfree (int *) ;
 int * xstrdup (char const*) ;

void
set_main_name (const char *name)
{
  if (name_of_main != ((void*)0))
    {
      xfree (name_of_main);
      name_of_main = ((void*)0);
    }
  if (name != ((void*)0))
    {
      name_of_main = xstrdup (name);
    }
}
