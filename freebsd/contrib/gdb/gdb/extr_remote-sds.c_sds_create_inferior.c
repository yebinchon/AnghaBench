
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET_SIGNAL_0 ;
 int bfd_get_start_address (int ) ;
 int clear_proceed_status () ;
 int exec_bfd ;
 int inferior_ptid ;
 int pid_to_ptid (int) ;
 int proceed (int ,int ,int ) ;

__attribute__((used)) static void
sds_create_inferior (char *exec_file, char *args, char **env)
{
  inferior_ptid = pid_to_ptid (42000);


  clear_proceed_status ();


  proceed (bfd_get_start_address (exec_bfd), TARGET_SIGNAL_0, 0);
}
