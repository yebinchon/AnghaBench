
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt_args {int from_tty; int args; } ;


 int ALL_CLEANUPS ;
 scalar_t__ attach_flag ;
 int current_target ;
 int do_final_cleanups (int ) ;
 scalar_t__ history_filename ;
 int inferior_ptid ;
 int null_ptid ;
 int ptid_equal (int ,int ) ;
 int target_close (int *,int) ;
 int target_detach (int ,int ) ;
 scalar_t__ target_has_execution ;
 int target_kill () ;
 int write_history (scalar_t__) ;
 scalar_t__ write_history_p ;

__attribute__((used)) static int
quit_target (void *arg)
{
  struct qt_args *qt = (struct qt_args *)arg;

  if (! ptid_equal (inferior_ptid, null_ptid) && target_has_execution)
    {
      if (attach_flag)
        target_detach (qt->args, qt->from_tty);
      else
        target_kill ();
    }


  target_close (&current_target, 1);


  if (write_history_p && history_filename)
    write_history (history_filename);

  do_final_cleanups (ALL_CLEANUPS);

  return 0;
}
