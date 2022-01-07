
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_dynsym_resolve_code; int open_symbol_file_object; int current_sos; int special_symbol_handling; int solib_create_inferior_hook; int clear_solib; int free_so; int relocate_section_addresses; } ;


 TYPE_1__* current_target_so_ops ;
 int fetch_link_map_offsets_gdbarch_data ;
 int init_fetch_link_map_offsets ;
 int open_symbol_file_object ;
 int register_gdbarch_data (int ) ;
 int svr4_clear_solib ;
 int svr4_current_sos ;
 int svr4_free_so ;
 int svr4_in_dynsym_resolve_code ;
 int svr4_relocate_section_addresses ;
 TYPE_1__ svr4_so_ops ;
 int svr4_solib_create_inferior_hook ;
 int svr4_special_symbol_handling ;

void
_initialize_svr4_solib (void)
{
  fetch_link_map_offsets_gdbarch_data =
    register_gdbarch_data (init_fetch_link_map_offsets);

  svr4_so_ops.relocate_section_addresses = svr4_relocate_section_addresses;
  svr4_so_ops.free_so = svr4_free_so;
  svr4_so_ops.clear_solib = svr4_clear_solib;
  svr4_so_ops.solib_create_inferior_hook = svr4_solib_create_inferior_hook;
  svr4_so_ops.special_symbol_handling = svr4_special_symbol_handling;
  svr4_so_ops.current_sos = svr4_current_sos;
  svr4_so_ops.open_symbol_file_object = open_symbol_file_object;
  svr4_so_ops.in_dynsym_resolve_code = svr4_in_dynsym_resolve_code;


  current_target_so_ops = &svr4_so_ops;
}
