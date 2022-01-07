
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_thread (int ) ;
 int general_thread ;
 int in_thread_list (int ) ;
 int pid_to_ptid (int) ;
 char* target_pid_to_str (int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;

__attribute__((used)) static void
record_currthread (int currthread)
{
  general_thread = currthread;



  if (!in_thread_list (pid_to_ptid (currthread)))
    {
      add_thread (pid_to_ptid (currthread));
      ui_out_text (uiout, "[New ");
      ui_out_text (uiout, target_pid_to_str (pid_to_ptid (currthread)));
      ui_out_text (uiout, "]\n");
    }
}
