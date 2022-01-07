
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PREFIX (int ) ;
 int RETURN_MASK_ALL ;
 char* SUFFIX (int ) ;
 int after_char_processing_hook () ;
 scalar_t__ async_command_editing_p ;
 int catch_errors (int ,int ,char*,int ) ;
 int display_gdb_prompt (int ) ;
 int gdb_do_one_event ;
 char* get_prompt () ;
 int input_handler ;
 int rl_callback_handler_install (char*,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 () ;
 scalar_t__ tui_active ;
 int tui_old_uiout ;
 int tui_out ;
 int uiout ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
tui_command_loop (void *data)
{
  int length;
  char *a_prompt;
  char *gdb_prompt = get_prompt ();



  if (async_command_editing_p)
    {



      length = strlen (PREFIX (0)) + strlen (gdb_prompt) + strlen (SUFFIX (0)) + 1;
      a_prompt = (char *) xmalloc (length);
      strcpy (a_prompt, PREFIX (0));
      strcat (a_prompt, gdb_prompt);
      strcat (a_prompt, SUFFIX (0));
      rl_callback_handler_install (a_prompt, input_handler);
    }
  else
    display_gdb_prompt (0);







  while (1)
    {
      int result = catch_errors (gdb_do_one_event, 0, "", RETURN_MASK_ALL);
      if (result < 0)
 break;




      if (tui_active)
        uiout = tui_out;
      else
        uiout = tui_old_uiout;

      if (result == 0)
 {



   display_gdb_prompt (0);






   if (after_char_processing_hook)
     (*after_char_processing_hook) ();


 }
    }



  return;
}
