
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int magic; int poll_quit; int error; int evprintf_filtered; int vprintf_filtered; int printf_filtered; int flush_stderr; int write_stderr; int flush_stdout; int write_stdout; int (* init ) (TYPE_1__*) ;} ;


 int HOST_CALLBACK_MAGIC ;
 int callbacks_initialized ;
 TYPE_1__ default_callback ;
 TYPE_1__ gdb_callback ;
 int gdb_os_error ;
 int gdb_os_evprintf_filtered ;
 int gdb_os_flush_stderr ;
 int gdb_os_flush_stdout ;
 int gdb_os_poll_quit ;
 int gdb_os_printf_filtered ;
 int gdb_os_vprintf_filtered ;
 int gdb_os_write_stderr ;
 int gdb_os_write_stdout ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
init_callbacks (void)
{
  if (!callbacks_initialized)
    {
      gdb_callback = default_callback;
      gdb_callback.init (&gdb_callback);
      gdb_callback.write_stdout = gdb_os_write_stdout;
      gdb_callback.flush_stdout = gdb_os_flush_stdout;
      gdb_callback.write_stderr = gdb_os_write_stderr;
      gdb_callback.flush_stderr = gdb_os_flush_stderr;
      gdb_callback.printf_filtered = gdb_os_printf_filtered;
      gdb_callback.vprintf_filtered = gdb_os_vprintf_filtered;
      gdb_callback.evprintf_filtered = gdb_os_evprintf_filtered;
      gdb_callback.error = gdb_os_error;
      gdb_callback.poll_quit = gdb_os_poll_quit;
      gdb_callback.magic = HOST_CALLBACK_MAGIC;
      callbacks_initialized = 1;
    }
}
