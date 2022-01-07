
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs_unfiltered (char const*,int ) ;
 int gdb_flush (int ) ;
 char serial_current_type ;
 int serial_logfp ;

void
serial_log_command (const char *cmd)
{
  if (!serial_logfp)
    return;

  serial_current_type = 'c';

  fputs_unfiltered ("\nc ", serial_logfp);
  fputs_unfiltered (cmd, serial_logfp);



  gdb_flush (serial_logfp);
}
