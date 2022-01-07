
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stdlog ;
 int io ;
 scalar_t__ remote_debug ;
 int serial_readchar (int ,scalar_t__) ;
 scalar_t__ timeout ;

__attribute__((used)) static unsigned char
get_byte (void)
{
  int c = serial_readchar (io, timeout);

  if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "[%02x]\n", c);

  if (c == SERIAL_TIMEOUT)
    {
      if (timeout == 0)
 return (unsigned char) c;

      error ("Timeout reading from remote_system");
    }

  return c;
}
