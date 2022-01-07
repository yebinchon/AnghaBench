
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int TARGET_SIGNAL_DEFAULT ;
 scalar_t__ bfd_get_start_address (scalar_t__) ;
 int clear_proceed_status () ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int init_wait_for_inferior () ;
 int proceed (int ,int ,int ) ;
 int target_terminal_inferior () ;
 int target_terminal_init () ;

__attribute__((used)) static void
st2000_create_inferior (char *execfile, char *args, char **env)
{
  int entry_pt;

  if (args && *args)
    error ("Can't pass arguments to remote STDEBUG process");

  if (execfile == 0 || exec_bfd == 0)
    error ("No executable file specified");

  entry_pt = (int) bfd_get_start_address (exec_bfd);




  clear_proceed_status ();


  init_wait_for_inferior ();



  target_terminal_init ();


  target_terminal_inferior ();



  proceed ((CORE_ADDR) entry_pt, TARGET_SIGNAL_DEFAULT, 0);
}
