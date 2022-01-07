
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mi_parse {int * argv; struct mi_parse* args; struct mi_parse* token; struct mi_parse* command; } ;


 int freeargv (int *) ;
 int xfree (struct mi_parse*) ;

void
mi_parse_free (struct mi_parse *parse)
{
  if (parse == ((void*)0))
    return;
  if (parse->command != ((void*)0))
    xfree (parse->command);
  if (parse->token != ((void*)0))
    xfree (parse->token);
  if (parse->args != ((void*)0))
    xfree (parse->args);
  if (parse->argv != ((void*)0))
    freeargv (parse->argv);
  xfree (parse);
}
