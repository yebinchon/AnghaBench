
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;




 int blknum ;
 int crcflag ;
 int crcinit () ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stderr ;
 int readchar (struct serial*,int) ;

int
xmodem_init_xfer (struct serial *desc)
{
  int c;
  int i;

  blknum = 1;
  crcflag = 0;
  crcinit ();

  for (i = 1; i <= 10; i++)
    {
      c = readchar (desc, 6);

      switch (c)
 {
 case 'C':
   crcflag = 1;
 case 128:
   return 0;
 default:
   fprintf_unfiltered (gdb_stderr, "xmodem_init_xfer: Got unexpected character %c (0%o)\n", c, c);
   continue;
 case 129:
   fprintf_unfiltered (gdb_stderr, "Got a CANCEL from the target.\n");
   continue;
 }
    }
  error ("xmodem_init_xfer:  Too many unexpected characters.");
}
