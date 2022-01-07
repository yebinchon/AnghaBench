
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int fatal (char*,char const*) ;
 int num_registers ;
 TYPE_1__* reg_defs ;
 int strcmp (char const*,int ) ;

int
find_regno (const char *name)
{
  int i;

  for (i = 0; i < num_registers; i++)
    if (!strcmp (name, reg_defs[i].name))
      return i;
  fatal ("Unknown register %s requested", name);
  return -1;
}
