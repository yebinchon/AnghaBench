
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_SIGNAL_0 ;
 int clear_proceed_status () ;
 scalar_t__ event_loop_p ;
 int extended_remote_restart () ;
 int inferior_event_handler ;
 int insert_breakpoints () ;
 int proceed (int,int ,int ) ;
 int remove_breakpoints () ;
 int target_async (int ,int ) ;
 scalar_t__ target_can_async_p () ;

__attribute__((used)) static void
extended_remote_async_create_inferior (char *exec_file, char *args, char **env)
{


  remove_breakpoints ();



  if (event_loop_p && target_can_async_p ())
    target_async (inferior_event_handler, 0);


  extended_remote_restart ();



  insert_breakpoints ();


  clear_proceed_status ();


  proceed (-1, TARGET_SIGNAL_0, 0);
}
