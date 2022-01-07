
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct mi_parse {char* token; } ;
struct cleanup {int dummy; } ;
struct captured_mi_execute_command_args {scalar_t__ action; struct mi_parse* command; } ;


 scalar_t__ EXECUTE_COMMAND_DISPLAY_ERROR ;
 scalar_t__ EXECUTE_COMMAND_SUPRESS_PROMPT ;
 int RETURN_MASK_ALL ;
 int captured_mi_execute_command ;
 int catch_exceptions (struct ui_out*,int ,struct captured_mi_execute_command_args*,char*,int ) ;
 char* error_last_message () ;
 int fputs_unfiltered (char*,int ) ;
 int fputstr_unfiltered (char*,char,int ) ;
 int gdb_flush (int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 struct mi_parse* mi_parse (char*) ;
 int mi_parse_free (struct mi_parse*) ;
 int quit_force (int *,int) ;
 int raw_stdout ;
 struct ui_out* uiout ;
 int xfree ;

void
mi_execute_command (char *cmd, int from_tty)
{
  struct mi_parse *command;
  struct captured_mi_execute_command_args args;
  struct ui_out *saved_uiout = uiout;
  int result;



  if (cmd == 0)
    quit_force (((void*)0), from_tty);

  command = mi_parse (cmd);

  if (command != ((void*)0))
    {


      args.command = command;
      result = catch_exceptions (uiout, captured_mi_execute_command, &args, "",
     RETURN_MASK_ALL);

      if (args.action == EXECUTE_COMMAND_SUPRESS_PROMPT)
 {


   mi_parse_free (command);
   return;
 }
      if (args.action == EXECUTE_COMMAND_DISPLAY_ERROR || result < 0)
 {
   char *msg = error_last_message ();
   struct cleanup *cleanup = make_cleanup (xfree, msg);


   fputs_unfiltered (command->token, raw_stdout);
   fputs_unfiltered ("^error,msg=\"", raw_stdout);
   fputstr_unfiltered (msg, '"', raw_stdout);
   fputs_unfiltered ("\"\n", raw_stdout);
 }
      mi_parse_free (command);
    }

  fputs_unfiltered ("(gdb) \n", raw_stdout);
  gdb_flush (raw_stdout);


}
