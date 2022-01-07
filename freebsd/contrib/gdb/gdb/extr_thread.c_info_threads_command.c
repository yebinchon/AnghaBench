
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int ptid; int num; struct thread_info* next; } ;
struct frame_info {int dummy; } ;
typedef int ptid_t ;


 int current_gdbarch ;
 int error (char*) ;
 struct frame_info* find_relative_frame (int ,int*) ;
 int frame_relative_level (int ) ;
 int get_selected_frame () ;
 int inferior_ptid ;
 scalar_t__ legacy_frame_p (int ) ;
 int print_stack_frame (int ,int,int ) ;
 int printf_filtered (char*,...) ;
 int prune_threads () ;
 scalar_t__ ptid_equal (int ,int ) ;
 int puts_filtered (char*) ;
 int select_frame (struct frame_info*) ;
 int show_stack_frame (struct frame_info*) ;
 int switch_to_thread (int ) ;
 char* target_extra_thread_info (struct thread_info*) ;
 int target_find_new_threads () ;
 int target_pid_to_str (int ) ;
 int target_tid_to_str (int ) ;
 struct thread_info* thread_list ;
 int warning (char*) ;

__attribute__((used)) static void
info_threads_command (char *arg, int from_tty)
{
  struct thread_info *tp;
  ptid_t current_ptid;
  struct frame_info *cur_frame;
  int saved_frame_level = frame_relative_level (get_selected_frame ());
  int counter;
  char *extra_info;



  if (legacy_frame_p (current_gdbarch) && saved_frame_level < 0)
    error ("No frame.");

  prune_threads ();
  target_find_new_threads ();
  current_ptid = inferior_ptid;
  for (tp = thread_list; tp; tp = tp->next)
    {
      if (ptid_equal (tp->ptid, current_ptid))
 printf_filtered ("* ");
      else
 printf_filtered ("  ");




      printf_filtered ("%d %s", tp->num, target_pid_to_str (tp->ptid));


      extra_info = target_extra_thread_info (tp);
      if (extra_info)
 printf_filtered (" (%s)", extra_info);
      puts_filtered ("  ");

      switch_to_thread (tp->ptid);
      print_stack_frame (get_selected_frame (), -1, 0);
    }

  switch_to_thread (current_ptid);







  counter = saved_frame_level;
  cur_frame = find_relative_frame (get_selected_frame (), &counter);
  if (counter != 0)
    {

      warning ("Couldn't restore frame in current thread, at frame 0");
      print_stack_frame (get_selected_frame (), -1, 0);
    }
  else
    {
      select_frame (cur_frame);
    }


  show_stack_frame (cur_frame);
}
