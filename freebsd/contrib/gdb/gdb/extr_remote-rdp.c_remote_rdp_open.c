
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init ) (TYPE_1__*) ;} ;


 int RDI_ConfigCPU ;
 int RDI_MatchAny ;
 int RDP_INFO ;
 int RDP_INFO_ICEBREAKER ;
 int RDP_SELECT_CONFIG ;
 int baud_rate ;
 TYPE_1__* callback ;
 int error_no_arg (char*) ;
 int flush_cached_frames () ;
 int get_selected_frame () ;
 int io ;
 int perror_with_name (char*) ;
 int print_stack_frame (int ,int,int) ;
 int printf_unfiltered (char*,char*,int) ;
 int push_target (int *) ;
 int rdp_catch_vectors () ;
 int rdp_info () ;
 int rdp_init (int,int) ;
 int read_pc () ;
 int registers_changed () ;
 int remote_rdp_ops ;
 int send_rdp (char*,int ,int ,...) ;
 int serial_open (char*) ;
 int serial_raw (int ) ;
 int stop_pc ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*) ;
 int target_preopen (int) ;

__attribute__((used)) static void
remote_rdp_open (char *args, int from_tty)
{
  int not_icebreaker;

  if (!args)
    error_no_arg ("serial port device name");

  baud_rate = 9600;

  target_preopen (from_tty);

  io = serial_open (args);

  if (!io)
    perror_with_name (args);

  serial_raw (io);

  rdp_init (1, from_tty);


  if (from_tty)
    {
      printf_unfiltered ("Remote RDP debugging using %s at %d baud\n", args, baud_rate);
    }

  rdp_info ();


  rdp_catch_vectors ();





  send_rdp ("bw-SB", RDP_INFO, RDP_INFO_ICEBREAKER, &not_icebreaker);
  if (!not_icebreaker)
    {
      const char *CPU = "ARM7TDI";
      int ICEversion;
      int len = strlen (CPU);

      send_rdp ("bbbbw-p-SWZ",
  RDP_SELECT_CONFIG,
  RDI_ConfigCPU,
  len,
  RDI_MatchAny,
  0,
  CPU, len,
  &ICEversion);
    }



  push_target (&remote_rdp_ops);

  callback->init (callback);
  flush_cached_frames ();
  registers_changed ();
  stop_pc = read_pc ();
  print_stack_frame (get_selected_frame (), -1, 1);
}
