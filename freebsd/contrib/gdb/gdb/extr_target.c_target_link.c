
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_lookup_symbol ) (char*,scalar_t__*) ;int to_shortname; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ DEPRECATED_STREQ (int ,char*) ;
 TYPE_1__ current_target ;
 int error (char*,char*) ;
 int stub1 (char*,scalar_t__*) ;

void
target_link (char *modname, CORE_ADDR *t_reloc)
{
  if (DEPRECATED_STREQ (current_target.to_shortname, "rombug"))
    {
      (current_target.to_lookup_symbol) (modname, t_reloc);
      if (*t_reloc == 0)
 error ("Unable to link to %s and get relocation in rombug", modname);
    }
  else
    *t_reloc = (CORE_ADDR) -1;
}
