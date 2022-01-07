
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab_and_line {TYPE_1__* symtab; int line; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
struct TYPE_2__ {int * fullname; int * filename; } ;


 int MI_CMD_DONE ;
 int error (char*) ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 int mi_valid_noargs (char*,int,char**) ;
 int set_default_source_symtab_and_line () ;
 int symtab_to_filename (TYPE_1__*) ;
 int ui_out_field_int (int ,char*,int ) ;
 int ui_out_field_string (int ,char*,int *) ;
 int uiout ;

enum mi_cmd_result
mi_cmd_file_list_exec_source_file(char *command, char **argv, int argc)
{
  struct symtab_and_line st;
  int optind = 0;
  char *optarg;

  if ( !mi_valid_noargs("mi_cmd_file_list_exec_source_file", argc, argv) )
    error ("mi_cmd_file_list_exec_source_file: Usage: No args");



  set_default_source_symtab_and_line();
  st = get_current_source_symtab_and_line();




  if (!st.symtab)
    error ("mi_cmd_file_list_exec_source_file: No symtab");


  if (st.symtab->fullname == ((void*)0))
    symtab_to_filename (st.symtab);


  if (st.symtab->fullname == ((void*)0))
    error ("mi_cmd_file_list_exec_source_file: File not found");


  ui_out_field_int (uiout, "line", st.line);
  ui_out_field_string (uiout, "file", st.symtab->filename);
  ui_out_field_string (uiout, "fullname", st.symtab->fullname);

  return MI_CMD_DONE;
}
