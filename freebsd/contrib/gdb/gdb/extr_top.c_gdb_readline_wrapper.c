
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Function ;


 int * after_char_processing_hook ;
 scalar_t__ event_loop_p ;
 char* readline (char*) ;
 int * rl_pre_input_hook ;

char *
gdb_readline_wrapper (char *prompt)
{

  if (event_loop_p && after_char_processing_hook)
    {
      rl_pre_input_hook = (Function *) after_char_processing_hook;
      after_char_processing_hook = ((void*)0);
    }

  return readline (prompt);
}
