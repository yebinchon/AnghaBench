
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bfd_get_start_address (scalar_t__) ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int gr_checkin () ;
 int gr_clear_all_breakpoints () ;
 int gr_kill () ;
 int init_wait_for_inferior () ;
 int insert_breakpoints () ;
 int proceed (int,int,int ) ;
 int sr_check_open () ;

void
gr_create_inferior (char *execfile, char *args, char **env)
{
  int entry_pt;

  if (args && *args)
    error ("Can't pass arguments to remote process.");

  if (execfile == 0 || exec_bfd == 0)
    error ("No executable file specified");

  entry_pt = (int) bfd_get_start_address (exec_bfd);
  sr_check_open ();

  gr_kill ();
  gr_clear_all_breakpoints ();

  init_wait_for_inferior ();
  gr_checkin ();

  insert_breakpoints ();
  proceed (entry_pt, -1, 0);
}
