
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int atoi (char*) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup_ui_out_list_begin_end (int ,char*) ;
 int mi_error_message ;
 int ui_out_field_string (int ,int *,char*) ;
 int uiout ;
 int xasprintf (int *,char*) ;

enum mi_cmd_result
mi_cmd_data_list_register_names (char *command, char **argv, int argc)
{
  int regnum, numregs;
  int i;
  struct cleanup *cleanup;







  numregs = NUM_REGS + NUM_PSEUDO_REGS;

  cleanup = make_cleanup_ui_out_list_begin_end (uiout, "register-names");

  if (argc == 0)
    {
      for (regnum = 0;
    regnum < numregs;
    regnum++)
 {
   if (REGISTER_NAME (regnum) == ((void*)0)
       || *(REGISTER_NAME (regnum)) == '\0')
     ui_out_field_string (uiout, ((void*)0), "");
   else
     ui_out_field_string (uiout, ((void*)0), REGISTER_NAME (regnum));
 }
    }


  for (i = 0; i < argc; i++)
    {
      regnum = atoi (argv[i]);
      if (regnum < 0 || regnum >= numregs)
 {
   do_cleanups (cleanup);
   xasprintf (&mi_error_message, "bad register number");
   return MI_CMD_ERROR;
 }
      if (REGISTER_NAME (regnum) == ((void*)0)
   || *(REGISTER_NAME (regnum)) == '\0')
 ui_out_field_string (uiout, ((void*)0), "");
      else
 ui_out_field_string (uiout, ((void*)0), REGISTER_NAME (regnum));
    }
  do_cleanups (cleanup);
  return MI_CMD_DONE;
}
