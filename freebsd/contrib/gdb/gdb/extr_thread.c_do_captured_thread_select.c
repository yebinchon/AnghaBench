
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct thread_info {int ptid; } ;


 int GDB_RC_OK ;
 int deprecated_selected_frame ;
 int error (char*,int) ;
 struct thread_info* find_thread_id (int) ;
 int frame_relative_level (int ) ;
 int inferior_ptid ;
 int parse_and_eval (void*) ;
 int pid_to_thread_id (int ) ;
 int print_stack_frame (int ,int ,int) ;
 int switch_to_thread (int ) ;
 char* target_pid_to_str (int ) ;
 char* target_tid_to_str (int ) ;
 int thread_alive (struct thread_info*) ;
 int ui_out_field_int (struct ui_out*,char*,int ) ;
 int ui_out_text (struct ui_out*,char*) ;
 int value_as_long (int ) ;

__attribute__((used)) static int
do_captured_thread_select (struct ui_out *uiout, void *tidstr)
{
  int num;
  struct thread_info *tp;

  num = value_as_long (parse_and_eval (tidstr));

  tp = find_thread_id (num);

  if (!tp)
    error ("Thread ID %d not known.", num);

  if (!thread_alive (tp))
    error ("Thread ID %d has terminated.\n", num);

  switch_to_thread (tp->ptid);

  ui_out_text (uiout, "[Switching to thread ");
  ui_out_field_int (uiout, "new-thread-id", pid_to_thread_id (inferior_ptid));
  ui_out_text (uiout, " (");



  ui_out_text (uiout, target_pid_to_str (inferior_ptid));

  ui_out_text (uiout, ")]");

  print_stack_frame (deprecated_selected_frame,
       frame_relative_level (deprecated_selected_frame), 1);
  return GDB_RC_OK;
}
