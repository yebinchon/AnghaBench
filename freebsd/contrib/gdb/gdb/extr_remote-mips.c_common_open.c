
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef enum mips_monitor_type { ____Placeholder_mips_monitor_type } mips_monitor_type ;


 int baud_rate ;
 char** buildargv (char*) ;
 struct target_ops* current_ops ;
 int deprecated_mips_set_processor_regs_hack () ;
 int error (char*) ;
 int flush_cached_frames () ;
 int get_selected_frame () ;
 int make_cleanup_freeargv (char**) ;
 int * mips_desc ;
 int mips_initialize () ;
 int mips_is_open ;
 int mips_monitor ;
 int * mips_monitor_prompt ;
 int nomem (int ) ;
 int perror_with_name (char*) ;
 int print_stack_frame (int ,int,int) ;
 int printf_unfiltered (char*,char*) ;
 int push_target (struct target_ops*) ;
 int read_pc () ;
 int registers_changed () ;
 int serial_close (int *) ;
 void* serial_open (char*) ;
 int serial_raw (int *) ;
 scalar_t__ serial_setbaudrate (int *,int) ;
 int stop_pc ;
 char* strchr (char*,char) ;
 int target_preopen (int) ;
 int tftp_in_use ;
 char* tftp_localname ;
 char* tftp_name ;
 void* udp_desc ;
 int udp_in_use ;
 int unpush_target (struct target_ops*) ;
 int xfree (char*) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static void
common_open (struct target_ops *ops, char *name, int from_tty,
      enum mips_monitor_type new_monitor,
      const char *new_monitor_prompt)
{
  char *ptype;
  char *serial_port_name;
  char *remote_name = 0;
  char *local_name = 0;
  char **argv;

  if (name == 0)
    error (
     "To open a MIPS remote debugging connection, you need to specify what serial\ndevice is attached to the target board (e.g., /dev/ttya).\n"

     "If you want to use TFTP to download to the board, specify the name of a\n"
     "temporary file to be used by GDB for downloads as the second argument.\n"
     "This filename must be in the form host:filename, where host is the name\n"
     "of the host running the TFTP server, and the file must be readable by the\n"
     "world.  If the local name of the temporary file differs from the name as\n"
     "seen from the board via TFTP, specify that name as the third parameter.\n");



  if ((argv = buildargv (name)) == ((void*)0))
    nomem (0);
  make_cleanup_freeargv (argv);

  serial_port_name = xstrdup (argv[0]);
  if (argv[1])
    {
      remote_name = argv[1];
      if (argv[2])
 local_name = argv[2];
    }

  target_preopen (from_tty);

  if (mips_is_open)
    unpush_target (current_ops);


  mips_desc = serial_open (serial_port_name);
  if (mips_desc == ((void*)0))
    perror_with_name (serial_port_name);

  if (baud_rate != -1)
    {
      if (serial_setbaudrate (mips_desc, baud_rate))
 {
   serial_close (mips_desc);
   perror_with_name (serial_port_name);
 }
    }

  serial_raw (mips_desc);





  if (remote_name)
    {
      if (strchr (remote_name, '#'))
 {
   udp_desc = serial_open (remote_name);
   if (!udp_desc)
     perror_with_name ("Unable to open UDP port");
   udp_in_use = 1;
 }
      else
 {



   if (tftp_name)
     xfree (tftp_name);
   if (tftp_localname)
     xfree (tftp_localname);
   if (local_name == ((void*)0))
     if ((local_name = strchr (remote_name, ':')) != ((void*)0))
       local_name++;
   if (local_name == ((void*)0))
     local_name = remote_name;
   tftp_name = xstrdup (remote_name);
   tftp_localname = xstrdup (local_name);
   tftp_in_use = 1;
 }
    }

  current_ops = ops;
  mips_is_open = 1;


  if (mips_monitor_prompt == ((void*)0))
    mips_monitor_prompt = xstrdup (new_monitor_prompt);
  mips_monitor = new_monitor;

  mips_initialize ();

  if (from_tty)
    printf_unfiltered ("Remote MIPS debugging using %s\n", serial_port_name);


  push_target (ops);




  deprecated_mips_set_processor_regs_hack ();






  flush_cached_frames ();
  registers_changed ();
  stop_pc = read_pc ();
  print_stack_frame (get_selected_frame (), -1, 1);
  xfree (serial_port_name);
}
