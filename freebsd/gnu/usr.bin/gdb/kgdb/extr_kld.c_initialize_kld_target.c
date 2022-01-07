
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
struct TYPE_3__ {int find_and_open_solib; int in_dynsym_resolve_code; int open_symbol_file_object; int current_sos; int special_symbol_handling; int solib_create_inferior_hook; int clear_solib; int free_so; int relocate_section_addresses; } ;


 struct cmd_list_element* add_com (char*,int ,int ,char*) ;
 int class_files ;
 TYPE_1__* current_target_so_ops ;
 int filename_completer ;
 int kgdb_add_kld_cmd ;
 int kld_clear_solib ;
 int kld_current_sos ;
 int kld_find_and_open_solib ;
 int kld_free_so ;
 int kld_in_dynsym_resolve_code ;
 int kld_open_symbol_file_object ;
 int kld_relocate_section_addresses ;
 TYPE_1__ kld_so_ops ;
 int kld_solib_create_inferior_hook ;
 int kld_special_symbol_handling ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;

void
initialize_kld_target(void)
{
 struct cmd_list_element *c;

 kld_so_ops.relocate_section_addresses = kld_relocate_section_addresses;
 kld_so_ops.free_so = kld_free_so;
 kld_so_ops.clear_solib = kld_clear_solib;
 kld_so_ops.solib_create_inferior_hook = kld_solib_create_inferior_hook;
 kld_so_ops.special_symbol_handling = kld_special_symbol_handling;
 kld_so_ops.current_sos = kld_current_sos;
 kld_so_ops.open_symbol_file_object = kld_open_symbol_file_object;
 kld_so_ops.in_dynsym_resolve_code = kld_in_dynsym_resolve_code;
 kld_so_ops.find_and_open_solib = kld_find_and_open_solib;

 current_target_so_ops = &kld_so_ops;

 c = add_com("add-kld", class_files, kgdb_add_kld_cmd,
    "Usage: add-kld FILE\nLoad the symbols from the kernel loadable module FILE.");

 set_cmd_completer(c, filename_completer);
}
