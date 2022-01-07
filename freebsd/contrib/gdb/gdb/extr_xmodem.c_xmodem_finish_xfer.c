
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;





 int error (char*) ;
 int fprintf_unfiltered (int ,char*,int,int) ;
 int gdb_stderr ;
 int readchar (struct serial*,int) ;
 int serial_write (struct serial*,char*,int) ;

void
xmodem_finish_xfer (struct serial *desc)
{
  int retries;

  for (retries = 10; retries >= 0; retries--)
    {
      int c;

      serial_write (desc, "\004", 1);

      c = readchar (desc, 3);
      switch (c)
 {
 case 130:
   return;
 case 128:
   continue;
 case 129:
   error ("xmodem_finish_xfer: Transfer aborted by receiver.");
 default:
   fprintf_unfiltered (gdb_stderr, "xmodem_send_packet: Got unexpected character %c (0%o)\n", c, c);
   continue;
 }
    }

  error ("xmodem_finish_xfer:  Excessive retries.");
}
