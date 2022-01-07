
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HDR_CHECK (int) ;
 int HDR_LENGTH ;
 int SERIAL_TIMEOUT ;
 int SYN ;
 int fputc_readable (int,int ) ;
 int fputc_unfiltered (int,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdtarg ;
 scalar_t__ isprint (int) ;
 scalar_t__ isspace (int) ;
 int mips_error (char*,int) ;
 int mips_initializing ;
 int mips_readchar (int) ;
 int mips_syn_garbage ;
 scalar_t__ remote_debug ;

__attribute__((used)) static int
mips_receive_header (unsigned char *hdr, int *pgarbage, int ch, int timeout)
{
  int i;

  while (1)
    {




      while (ch != SYN)
 {
   ch = mips_readchar (timeout);
   if (ch == SERIAL_TIMEOUT)
     return -1;
   if (ch != SYN)
     {





        if (!mips_initializing || remote_debug > 0)
    {
    if (isprint (ch) || isspace (ch))
      {
        fputc_unfiltered (ch, gdb_stdtarg);
      }
    else
      {
        fputc_readable (ch, gdb_stdtarg);
      }
    gdb_flush (gdb_stdtarg);
    }


       if (! (isprint (ch) || isspace (ch)))
  (*pgarbage) += 1;

       if (mips_syn_garbage > 0
    && *pgarbage > mips_syn_garbage)
  mips_error ("Debug protocol failure:  more than %d characters before a sync.",
       mips_syn_garbage);
     }
 }


      for (i = 1; i < HDR_LENGTH; i++)
 {
   ch = mips_readchar (timeout);
   if (ch == SERIAL_TIMEOUT)
     return -1;

   if (ch == SYN || !HDR_CHECK (ch))
     break;

   hdr[i] = ch;
 }



      if (i >= HDR_LENGTH)
 return 0;
    }
}
