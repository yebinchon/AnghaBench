
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {long remote_packet_size; } ;



 char* alloca (long) ;
 int fprintf_unfiltered (int ,char*) ;
 int fputc_unfiltered (int,int ) ;
 int fputstrn_unfiltered (char*,int,int ,int ) ;
 int gdb_flush (int ) ;
 int gdb_stdlog ;
 struct remote_state* get_remote_state () ;
 int interrupt_query () ;
 int perror_with_name (char*) ;
 int putchar_unfiltered (char) ;
 scalar_t__ quit_flag ;
 int read_frame (char*,long) ;
 int readchar (int ) ;
 scalar_t__ remote_debug ;
 int remote_desc ;
 int remote_timeout ;
 scalar_t__ serial_write (int ,char*,int) ;
 void* tohex (unsigned char) ;

__attribute__((used)) static int
putpkt_binary (char *buf, int cnt)
{
  struct remote_state *rs = get_remote_state ();
  int i;
  unsigned char csum = 0;
  char *buf2 = alloca (cnt + 6);
  long sizeof_junkbuf = (rs->remote_packet_size);
  char *junkbuf = alloca (sizeof_junkbuf);

  int ch;
  int tcount = 0;
  char *p;




  p = buf2;
  *p++ = '$';

  for (i = 0; i < cnt; i++)
    {
      csum += buf[i];
      *p++ = buf[i];
    }
  *p++ = '#';
  *p++ = tohex ((csum >> 4) & 0xf);
  *p++ = tohex (csum & 0xf);



  while (1)
    {
      int started_error_output = 0;

      if (remote_debug)
 {
   *p = '\0';
   fprintf_unfiltered (gdb_stdlog, "Sending packet: ");
   fputstrn_unfiltered (buf2, p - buf2, 0, gdb_stdlog);
   fprintf_unfiltered (gdb_stdlog, "...");
   gdb_flush (gdb_stdlog);
 }
      if (serial_write (remote_desc, buf2, p - buf2))
 perror_with_name ("putpkt: write failed");


      while (1)
 {
   ch = readchar (remote_timeout);

   if (remote_debug)
     {
       switch (ch)
  {
  case '+':
  case '-':
  case 128:
  case '$':
    if (started_error_output)
      {
        putchar_unfiltered ('\n');
        started_error_output = 0;
      }
  }
     }

   switch (ch)
     {
     case '+':
       if (remote_debug)
  fprintf_unfiltered (gdb_stdlog, "Ack\n");
       return 1;
     case '-':
       if (remote_debug)
  fprintf_unfiltered (gdb_stdlog, "Nak\n");
     case 128:
       tcount++;
       if (tcount > 3)
  return 0;
       break;
     case '$':
       {
         if (remote_debug)
    fprintf_unfiltered (gdb_stdlog, "Packet instead of Ack, ignoring it\n");


  read_frame (junkbuf, sizeof_junkbuf);
  continue;
       }
     default:
       if (remote_debug)
  {
    if (!started_error_output)
      {
        started_error_output = 1;
        fprintf_unfiltered (gdb_stdlog, "putpkt: Junk: ");
      }
    fputc_unfiltered (ch & 0177, gdb_stdlog);
  }
       continue;
     }
   break;
 }
    }
}
