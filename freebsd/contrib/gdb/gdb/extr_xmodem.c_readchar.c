
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;


 int SERIAL_TIMEOUT ;
 int error (char*) ;
 int fputc_unfiltered (int,int ) ;
 int gdb_stdlog ;
 int perror_with_name (char*) ;
 scalar_t__ remote_debug ;
 int serial_readchar (struct serial*,int) ;

__attribute__((used)) static int
readchar (struct serial *desc, int timeout)
{
  int c;

  c = serial_readchar (desc, timeout);

  if (remote_debug > 0)
    fputc_unfiltered (c, gdb_stdlog);

  if (c >= 0)
    return c;

  if (c == SERIAL_TIMEOUT)
    error ("Timeout reading from remote system.");

  perror_with_name ("xmodem.c:readchar()");
}
