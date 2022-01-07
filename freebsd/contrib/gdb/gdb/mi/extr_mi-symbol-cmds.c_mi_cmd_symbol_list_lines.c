
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symtab {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
struct TYPE_4__ {int nitems; TYPE_1__* item; } ;
struct TYPE_3__ {int line; int pc; } ;


 TYPE_2__* LINETABLE (struct symtab*) ;
 int MI_CMD_DONE ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 struct symtab* lookup_symtab (char*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,int *) ;
 int ui_out_field_core_addr (int ,char*,int ) ;
 int ui_out_field_int (int ,char*,int ) ;
 int uiout ;

enum mi_cmd_result
mi_cmd_symbol_list_lines (char *command, char **argv, int argc)
{
  char *filename;
  struct symtab *s;
  int i;
  struct cleanup *cleanup_stack, *cleanup_tuple;

  if (argc != 1)
    error ("mi_cmd_symbol_list_lines: Usage: SOURCE_FILENAME");

  filename = argv[0];
  s = lookup_symtab (filename);

  if (s == ((void*)0))
    error ("mi_cmd_symbol_list_lines: Unknown source file name.");





  cleanup_stack = make_cleanup_ui_out_list_begin_end (uiout, "lines");

  if (LINETABLE (s) != ((void*)0) && LINETABLE (s)->nitems > 0)
    for (i = 0; i < LINETABLE (s)->nitems; i++)
    {
      cleanup_tuple = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
      ui_out_field_core_addr (uiout, "pc", LINETABLE (s)->item[i].pc);
      ui_out_field_int (uiout, "line", LINETABLE (s)->item[i].line);
      do_cleanups (cleanup_tuple);
    }

  do_cleanups (cleanup_stack);

  return MI_CMD_DONE;
}
