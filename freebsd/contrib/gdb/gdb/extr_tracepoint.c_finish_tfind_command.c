
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int deprecated_selected_frame ;
 int do_displays () ;
 int error (char*,...) ;
 struct symbol* find_pc_function (int) ;
 int flush_cached_frames () ;
 int frame_relative_level (int ) ;
 int get_current_frame () ;
 scalar_t__ get_frame_base (int ) ;
 int info_verbose ;
 int print_stack_frame (int ,int ,int) ;
 int printf_filtered (char*) ;
 int putpkt (char*) ;
 int read_pc () ;
 int registers_changed () ;
 char* remote_get_noisy_reply (char*,long) ;
 int select_frame (int ) ;
 int set_traceframe_context (int) ;
 int set_traceframe_num (int) ;
 int set_tracepoint_num (int) ;
 scalar_t__ strtol (char*,char**,int) ;
 int trace_find_command (char*,int) ;

__attribute__((used)) static void
finish_tfind_command (char *msg,
        long sizeof_msg,
        int from_tty)
{
  int target_frameno = -1, target_tracept = -1;
  CORE_ADDR old_frame_addr;
  struct symbol *old_func;
  char *reply;

  old_frame_addr = get_frame_base (get_current_frame ());
  old_func = find_pc_function (read_pc ());

  putpkt (msg);
  reply = remote_get_noisy_reply (msg, sizeof_msg);

  while (reply && *reply)
    switch (*reply)
      {
      case 'F':
 if ((target_frameno = (int) strtol (++reply, &reply, 16)) == -1)
   {
     if (from_tty)
       error ("Target failed to find requested trace frame.");
     else
       {
  if (info_verbose)
    printf_filtered ("End of trace buffer.\n");

  trace_find_command ("-1", from_tty);
  reply = ((void*)0);

       }
   }
 break;
      case 'T':
 if ((target_tracept = (int) strtol (++reply, &reply, 16)) == -1)
   error ("Target failed to find requested trace frame.");
 break;
      case 'O':
 if (reply[1] == 'K' && reply[2] == '\0')
   reply += 2;
 else
   error ("Bogus reply from target: %s", reply);
 break;
      default:
 error ("Bogus reply from target: %s", reply);
      }

  flush_cached_frames ();
  registers_changed ();
  select_frame (get_current_frame ());
  set_traceframe_num (target_frameno);
  set_tracepoint_num (target_tracept);
  if (target_frameno == -1)
    set_traceframe_context (-1);
  else
    set_traceframe_context (read_pc ());

  if (from_tty)
    {
      int source_only;
      if (old_func == find_pc_function (read_pc ()) &&
   (old_frame_addr == 0 ||
    get_frame_base (get_current_frame ()) == 0 ||
    old_frame_addr == get_frame_base (get_current_frame ())))
 source_only = -1;
      else
 source_only = 1;

      print_stack_frame (deprecated_selected_frame,
    frame_relative_level (deprecated_selected_frame),
    source_only);
      do_displays ();
    }
}
