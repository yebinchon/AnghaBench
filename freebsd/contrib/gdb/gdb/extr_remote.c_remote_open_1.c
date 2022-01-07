
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct remote_state {int remote_packet_size; } ;


 int MAGIC_NULL_PID ;
 int PIDGET (int ) ;
 int RETURN_MASK_ALL ;
 int SOLIB_CREATE_INFERIOR_HOOK (int ) ;
 char* alloca (int ) ;
 int baud_rate ;
 int catch_exceptions (int ,int ,int *,char*,int ) ;
 int continue_thread ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int general_thread ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int inferior_ptid ;
 int init_all_packet_configs () ;
 int no_shared_libraries (int *,int ) ;
 int perror_with_name (char*) ;
 int pid_to_ptid (int ) ;
 int pop_target () ;
 int push_target (struct target_ops*) ;
 int putpkt (char*) ;
 int puts_filtered (char*) ;
 int remote_async_terminal_ours_p ;
 int remote_check_symbols (int ) ;
 int * remote_desc ;
 int * remote_serial_open (char*) ;
 int remote_start_remote ;
 int serial_close (int *) ;
 int serial_flush_input (int *) ;
 int serial_raw (int *) ;
 scalar_t__ serial_setbaudrate (int *,int) ;
 int symfile_objfile ;
 int target_preopen (int) ;
 int throw_exception (int) ;
 int uiout ;
 int unpush_target (struct target_ops*) ;
 int use_threadextra_query ;
 int use_threadinfo_query ;
 int wait_forever_enabled_p ;

__attribute__((used)) static void
remote_open_1 (char *name, int from_tty, struct target_ops *target,
        int extended_p, int async_p)
{
  int ex;
  struct remote_state *rs = get_remote_state ();
  if (name == 0)
    error ("To open a remote debug connection, you need to specify what\n"
    "serial device is attached to the remote system\n"
    "(e.g. /dev/ttyS0, /dev/ttya, COM1, etc.).");


  if (!async_p)
    wait_forever_enabled_p = 1;

  target_preopen (from_tty);

  unpush_target (target);

  remote_desc = remote_serial_open (name);
  if (!remote_desc)
    perror_with_name (name);

  if (baud_rate != -1)
    {
      if (serial_setbaudrate (remote_desc, baud_rate))
 {




   serial_close (remote_desc);
   remote_desc = ((void*)0);
   perror_with_name (name);
 }
    }

  serial_raw (remote_desc);



  serial_flush_input (remote_desc);

  if (from_tty)
    {
      puts_filtered ("Remote debugging using ");
      puts_filtered (name);
      puts_filtered ("\n");
    }
  push_target (target);

  init_all_packet_configs ();

  general_thread = -2;
  continue_thread = -2;


  use_threadinfo_query = 1;
  use_threadextra_query = 1;
  inferior_ptid = pid_to_ptid (MAGIC_NULL_PID);

  if (async_p)
    {

      remote_async_terminal_ours_p = 1;
      wait_forever_enabled_p = 0;
    }
  ex = catch_exceptions (uiout,
    remote_start_remote, ((void*)0),
    "Couldn't establish connection to remote"
    " target\n",
    RETURN_MASK_ALL);
  if (ex < 0)
    {
      pop_target ();
      if (async_p)
 wait_forever_enabled_p = 1;
      throw_exception (ex);
    }

  if (async_p)
    wait_forever_enabled_p = 1;

  if (extended_p)
    {

      char *buf = alloca (rs->remote_packet_size);
      putpkt ("!");
      getpkt (buf, (rs->remote_packet_size), 0);
    }
}
