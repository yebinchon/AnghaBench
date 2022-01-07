
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



 int error (char*,...) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 int mips_desc ;
 int mips_readchar (int ) ;
 int paddr_u (int ) ;
 int remote_timeout ;
 int serial_write (int ,char*,int) ;

__attribute__((used)) static void
send_srec (char *srec, int len, CORE_ADDR addr)
{
  while (1)
    {
      int ch;

      serial_write (mips_desc, srec, len);

      ch = mips_readchar (remote_timeout);

      switch (ch)
 {
 case 128:
   error ("Timeout during download.");
   break;
 case 0x6:
   return;
 case 0x15:
   fprintf_unfiltered (gdb_stderr, "Download got a NACK at byte %s!  Retrying.\n", paddr_u (addr));
   continue;
 default:
   error ("Download got unexpected ack char: 0x%x, retrying.\n", ch);
 }
    }
}
