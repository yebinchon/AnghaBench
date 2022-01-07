
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int TARGET_SIGNAL_DEFAULT ;
 scalar_t__ bfd_get_start_address (scalar_t__) ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int inferior_ptid ;
 int init_wait_for_inferior () ;
 int insert_breakpoints () ;
 int pid_to_ptid (int) ;
 int proceed (scalar_t__,int ,int ) ;
 int rdp_set_command_line (char*,char*) ;
 int remote_rdp_kill () ;
 int remove_breakpoints () ;

__attribute__((used)) static void
remote_rdp_create_inferior (char *exec_file, char *allargs, char **env)
{
  CORE_ADDR entry_point;

  if (exec_file == 0 || exec_bfd == 0)
    error ("No executable file specified.");

  entry_point = (CORE_ADDR) bfd_get_start_address (exec_bfd);

  remote_rdp_kill ();
  remove_breakpoints ();
  init_wait_for_inferior ();


  rdp_set_command_line (exec_file, allargs);

  inferior_ptid = pid_to_ptid (42);
  insert_breakpoints ();







  proceed (entry_point, TARGET_SIGNAL_DEFAULT, 0);
}
