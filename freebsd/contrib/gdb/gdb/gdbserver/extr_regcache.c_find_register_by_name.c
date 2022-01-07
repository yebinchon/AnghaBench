
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int name; } ;


 int fatal (char*,char const*) ;
 int num_registers ;
 struct reg* reg_defs ;
 int strcmp (char const*,int ) ;

struct reg *
find_register_by_name (const char *name)
{
  int i;

  for (i = 0; i < num_registers; i++)
    if (!strcmp (name, reg_defs[i].name))
      return &reg_defs[i];
  fatal ("Unknown register %s requested", name);
  return 0;
}
