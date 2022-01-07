
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * after_char_processing_hook ;
 int operate_saved_history ;
 int rl_get_previous_history (int,int ) ;
 int * rl_pre_input_hook ;
 int rl_redisplay () ;
 int where_history () ;

__attribute__((used)) static void
gdb_rl_operate_and_get_next_completion (void)
{
  int delta = where_history () - operate_saved_history;

  rl_get_previous_history (delta, 0);
  operate_saved_history = -1;


  rl_redisplay ();

  after_char_processing_hook = ((void*)0);
  rl_pre_input_hook = ((void*)0);
}
