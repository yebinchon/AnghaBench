
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_dynsym_resolve_code; int open_symbol_file_object; int current_sos; int special_symbol_handling; int solib_create_inferior_hook; int clear_solib; int free_so; int relocate_section_addresses; } ;


 TYPE_1__* current_target_so_ops ;
 int osf_clear_solib ;
 int osf_current_sos ;
 int osf_free_so ;
 int osf_in_dynsym_resolve_code ;
 int osf_open_symbol_file_object ;
 int osf_relocate_section_addresses ;
 TYPE_1__ osf_so_ops ;
 int osf_solib_create_inferior_hook ;
 int osf_special_symbol_handling ;

void
_initialize_osf_solib (void)
{
  osf_so_ops.relocate_section_addresses = osf_relocate_section_addresses;
  osf_so_ops.free_so = osf_free_so;
  osf_so_ops.clear_solib = osf_clear_solib;
  osf_so_ops.solib_create_inferior_hook = osf_solib_create_inferior_hook;
  osf_so_ops.special_symbol_handling = osf_special_symbol_handling;
  osf_so_ops.current_sos = osf_current_sos;
  osf_so_ops.open_symbol_file_object = osf_open_symbol_file_object;
  osf_so_ops.in_dynsym_resolve_code = osf_in_dynsym_resolve_code;


  current_target_so_ops = &osf_so_ops;
}
