
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_DEFERRED_STORES ;
 scalar_t__ attach_flag ;
 int breakpoint_clear_ignore_counts () ;
 int breakpoint_init_inferior (int ) ;
 int detach_hook () ;
 int inf_exited ;
 int inferior_ptid ;
 int null_ptid ;
 int registers_changed () ;
 int reinit_frame_cache () ;
 int reopen_exec_file () ;

void
generic_mourn_inferior (void)
{
  extern int show_breakpoint_hit_counts;

  inferior_ptid = null_ptid;
  attach_flag = 0;
  breakpoint_init_inferior (inf_exited);
  registers_changed ();






  reopen_exec_file ();
  reinit_frame_cache ();





  if (!show_breakpoint_hit_counts)
    breakpoint_clear_ignore_counts ();

  if (detach_hook)
    detach_hook ();
}
