
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ call_command_hook ;
 scalar_t__ context_hook ;
 scalar_t__ create_breakpoint_hook ;
 scalar_t__ delete_breakpoint_hook ;
 scalar_t__ error_begin_hook ;
 scalar_t__ error_hook ;
 int event_loop_p ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_flush (int ) ;
 void* gdb_stderr ;
 void* gdb_stdlog ;
 void* gdb_stdout ;
 void* gdb_stdtarg ;
 scalar_t__ init_ui_hook ;
 scalar_t__ interactive_hook ;
 scalar_t__ memory_changed_hook ;
 void* mi_console_file_new (int ,char*,char) ;
 int mi_execute_command ;
 int mi_input ;
 int mi_load_progress ;
 int mi_out_new (int) ;
 scalar_t__ modify_breakpoint_hook ;
 scalar_t__ print_frame_info_listing_hook ;
 scalar_t__ query_hook ;
 int raw_stdout ;
 scalar_t__ readline_begin_hook ;
 scalar_t__ readline_end_hook ;
 scalar_t__ readline_hook ;
 scalar_t__ register_changed_hook ;
 scalar_t__ registers_changed_hook ;
 int sevenbit_strings ;
 int show_load_progress ;
 int simplified_command_loop (int ,int ) ;
 int start_event_loop () ;
 int stdio_fileopen (int ) ;
 int stdout ;
 scalar_t__ target_wait_hook ;
 int uiout ;
 scalar_t__ warning_hook ;

__attribute__((used)) static void
mi_command_loop (int mi_version)
{
  sevenbit_strings = 1;

  fputs_unfiltered ("(gdb) \n", raw_stdout);
  gdb_flush (raw_stdout);
  if (!event_loop_p)
    simplified_command_loop (mi_input, mi_execute_command);
  else
    start_event_loop ();
}
