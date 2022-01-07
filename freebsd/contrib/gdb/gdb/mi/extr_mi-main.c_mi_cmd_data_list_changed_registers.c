
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
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 int mi_error_message ;
 int register_changed_p (int) ;
 int ui_out_field_int (int ,int *,int) ;
 int uiout ;
 int xasprintf (int *,char*) ;

enum mi_cmd_result
mi_cmd_data_list_changed_registers (char *command, char **argv, int argc)
{
  int regnum, numregs, changed;
  int i;
  struct cleanup *cleanup;







  numregs = NUM_REGS;

  cleanup = make_cleanup_ui_out_list_begin_end (uiout, "changed-registers");

  if (argc == 0)
    {
      for (regnum = 0;
    regnum < numregs;
    regnum++)
 {
   if (REGISTER_NAME (regnum) == ((void*)0)
       || *(REGISTER_NAME (regnum)) == '\0')
     continue;
   changed = register_changed_p (regnum);
   if (changed < 0)
     {
       do_cleanups (cleanup);
       xasprintf (&mi_error_message,
    "mi_cmd_data_list_changed_registers: Unable to read register contents.");
       return MI_CMD_ERROR;
     }
   else if (changed)
     ui_out_field_int (uiout, ((void*)0), regnum);
 }
    }


  for (i = 0; i < argc; i++)
    {
      regnum = atoi (argv[i]);

      if (regnum >= 0
   && regnum < numregs
   && REGISTER_NAME (regnum) != ((void*)0)
   && *REGISTER_NAME (regnum) != '\000')
 {
   changed = register_changed_p (regnum);
   if (changed < 0)
     {
       do_cleanups (cleanup);
       xasprintf (&mi_error_message,
    "mi_cmd_data_list_register_change: Unable to read register contents.");
       return MI_CMD_ERROR;
     }
   else if (changed)
     ui_out_field_int (uiout, ((void*)0), regnum);
 }
      else
 {
   do_cleanups (cleanup);
   xasprintf (&mi_error_message, "bad register number");
   return MI_CMD_ERROR;
 }
    }
  do_cleanups (cleanup);
  return MI_CMD_DONE;
}
