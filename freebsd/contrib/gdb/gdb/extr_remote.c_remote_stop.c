
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 scalar_t__ remote_break ;
 scalar_t__ remote_debug ;
 int remote_desc ;
 int serial_send_break (int ) ;
 int serial_write (int ,char*,int) ;

__attribute__((used)) static void
remote_stop (void)
{

  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "remote_stop called\n");

  if (remote_break)
    serial_send_break (remote_desc);
  else
    serial_write (remote_desc, "\003", 1);
}
