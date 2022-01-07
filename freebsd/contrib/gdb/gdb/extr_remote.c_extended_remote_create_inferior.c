
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_SIGNAL_0 ;
 int clear_proceed_status () ;
 int extended_remote_restart () ;
 int insert_breakpoints () ;
 int proceed (int,int ,int ) ;
 int remove_breakpoints () ;

__attribute__((used)) static void
extended_remote_create_inferior (char *exec_file, char *args, char **env)
{


  remove_breakpoints ();


  extended_remote_restart ();



  insert_breakpoints ();


  clear_proceed_status ();


  proceed (-1, TARGET_SIGNAL_0, 0);
}
