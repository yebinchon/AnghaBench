
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int atoi (char*) ;
 int do_cleanups (struct cleanup*) ;
 int get_register (int,int) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 struct cleanup* make_cleanup_ui_out_tuple_begin_end (int ,int *) ;
 int mi_error_message ;
 int target_has_registers ;
 int ui_out_field_int (int ,char*,int) ;
 int uiout ;
 int xasprintf (int *,char*) ;

enum mi_cmd_result
mi_cmd_data_list_register_values (char *command, char **argv, int argc)
{
  int regnum, numregs, format, result;
  int i;
  struct cleanup *list_cleanup, *tuple_cleanup;







  numregs = NUM_REGS;

  if (argc == 0)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_list_register_values: Usage: -data-list-register-values <format> [<regnum1>...<regnumN>]");
      return MI_CMD_ERROR;
    }

  format = (int) argv[0][0];

  if (!target_has_registers)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_data_list_register_values: No registers.");
      return MI_CMD_ERROR;
    }

  list_cleanup = make_cleanup_ui_out_list_begin_end (uiout, "register-values");

  if (argc == 1)
    {
      for (regnum = 0;
    regnum < numregs;
    regnum++)
 {
   if (REGISTER_NAME (regnum) == ((void*)0)
       || *(REGISTER_NAME (regnum)) == '\0')
     continue;
   tuple_cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
   ui_out_field_int (uiout, "number", regnum);
   result = get_register (regnum, format);
   if (result == -1)
     {
       do_cleanups (list_cleanup);
       return MI_CMD_ERROR;
     }
   do_cleanups (tuple_cleanup);
 }
    }


  for (i = 1; i < argc; i++)
    {
      regnum = atoi (argv[i]);

      if (regnum >= 0
   && regnum < numregs
   && REGISTER_NAME (regnum) != ((void*)0)
   && *REGISTER_NAME (regnum) != '\000')
 {
   tuple_cleanup = make_cleanup_ui_out_tuple_begin_end (uiout, ((void*)0));
   ui_out_field_int (uiout, "number", regnum);
   result = get_register (regnum, format);
   if (result == -1)
     {
       do_cleanups (list_cleanup);
       return MI_CMD_ERROR;
     }
   do_cleanups (tuple_cleanup);
 }
      else
 {
   do_cleanups (list_cleanup);
   xasprintf (&mi_error_message, "bad register number");
   return MI_CMD_ERROR;
 }
    }
  do_cleanups (list_cleanup);
  return MI_CMD_DONE;
}
