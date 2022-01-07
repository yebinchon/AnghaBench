
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_dynsym_resolve_code; int open_symbol_file_object; int current_sos; int special_symbol_handling; int solib_create_inferior_hook; int clear_solib; int free_so; int relocate_section_addresses; } ;


 TYPE_1__* current_target_so_ops ;
 int open_symbol_file_object ;
 int sunos_clear_solib ;
 int sunos_current_sos ;
 int sunos_free_so ;
 int sunos_in_dynsym_resolve_code ;
 int sunos_relocate_section_addresses ;
 TYPE_1__ sunos_so_ops ;
 int sunos_solib_create_inferior_hook ;
 int sunos_special_symbol_handling ;

void
_initialize_sunos_solib (void)
{
  sunos_so_ops.relocate_section_addresses = sunos_relocate_section_addresses;
  sunos_so_ops.free_so = sunos_free_so;
  sunos_so_ops.clear_solib = sunos_clear_solib;
  sunos_so_ops.solib_create_inferior_hook = sunos_solib_create_inferior_hook;
  sunos_so_ops.special_symbol_handling = sunos_special_symbol_handling;
  sunos_so_ops.current_sos = sunos_current_sos;
  sunos_so_ops.open_symbol_file_object = open_symbol_file_object;
  sunos_so_ops.in_dynsym_resolve_code = sunos_in_dynsym_resolve_code;


  current_target_so_ops = &sunos_so_ops;
}
