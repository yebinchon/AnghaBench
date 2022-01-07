
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tui_translate {scalar_t__ name; } ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct tui_translate *
translate (const char *name, struct tui_translate *table)
{
  while (table->name)
    {
      if (name && strcmp (table->name, name) == 0)
        return table;
      table++;
    }


  table++;
  return table;
}
