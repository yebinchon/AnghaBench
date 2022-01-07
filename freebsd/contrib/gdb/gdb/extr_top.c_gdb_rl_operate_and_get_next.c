
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Function ;


 scalar_t__ after_char_processing_hook ;
 scalar_t__ event_loop_p ;
 scalar_t__ gdb_rl_operate_and_get_next_completion ;
 scalar_t__ history_is_stifled () ;
 int history_length ;
 int max_input_history ;
 int operate_saved_history ;
 int rl_newline (int,int) ;
 int * rl_pre_input_hook ;
 int where_history () ;

__attribute__((used)) static int
gdb_rl_operate_and_get_next (int count, int key)
{
  int where;

  if (event_loop_p)
    {

      after_char_processing_hook = gdb_rl_operate_and_get_next_completion;
    }
  else
    {


      rl_pre_input_hook = (Function *) gdb_rl_operate_and_get_next_completion;
    }


  where = where_history();






  if ((history_is_stifled () && (history_length >= max_input_history)) ||
      (where >= history_length - 1))
    operate_saved_history = where;
  else
    operate_saved_history = where + 1;

  return rl_newline (1, key);
}
