
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int e7000_desc ;
 scalar_t__ echo ;
 int error (char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int normal (int) ;
 int putchar_unfiltered (int) ;
 scalar_t__ remote_debug ;
 int serial_readchar (int ,int) ;

__attribute__((used)) static int
readchar (int timeout)
{
  int c;

  do
    {
      c = serial_readchar (e7000_desc, timeout);
    }
  while (c > 127);

  if (c == SERIAL_TIMEOUT)
    {
      if (timeout == 0)
 return -1;
      echo = 0;
      error ("Timeout reading from remote system.");
    }
  else if (c < 0)
    error ("Serial communication error");

  if (remote_debug)
    {
      putchar_unfiltered (c);
      gdb_flush (gdb_stdout);
    }

  return normal (c);
}
