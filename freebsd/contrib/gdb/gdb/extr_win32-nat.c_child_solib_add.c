
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct TYPE_2__ {int load_addr; scalar_t__ name; int objfile; } ;


 int bfd_map_over_sections (scalar_t__,int *,struct target_ops*) ;
 int child_clear_solibs () ;
 scalar_t__ core_bfd ;
 int core_section_load_dll_symbols ;
 TYPE_1__* solib_end ;
 int solib_symbols_add (scalar_t__,int,int ) ;

void
child_solib_add (char *filename, int from_tty, struct target_ops *target,
   int readsyms)
{
  if (!readsyms)
    return;
  if (core_bfd)
    {
      child_clear_solibs ();
      bfd_map_over_sections (core_bfd, &core_section_load_dll_symbols, target);
    }
  else
    {
      if (solib_end && solib_end->name)
      solib_end->objfile = solib_symbols_add (solib_end->name, from_tty,
      solib_end->load_addr);
    }
}
