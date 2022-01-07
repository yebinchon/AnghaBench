
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_TRIES ;
 int QUIT ;
 int SERIAL_TIMEOUT ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*) ;
 int fputs_filtered (char*,int ) ;
 int fputstr_unfiltered (char*,int ,int ) ;
 int gdb_stdlog ;
 int printf_unfiltered (char*) ;
 int read_frame (char*,long) ;
 int readchar (int) ;
 scalar_t__ remote_debug ;
 int remote_desc ;
 int remote_timeout ;
 int serial_write (int ,char*,int) ;
 int strcpy (char*,char*) ;
 int target_mourn_inferior () ;
 scalar_t__ watchdog ;

__attribute__((used)) static int
getpkt_sane (char *buf,
 long sizeof_buf,
 int forever)
{
  int c;
  int tries;
  int timeout;
  int val;

  strcpy (buf, "timeout");

  if (forever)
    {
      timeout = watchdog > 0 ? watchdog : -1;
    }

  else
    timeout = remote_timeout;



  for (tries = 1; tries <= 3; tries++)
    {
      do
 {
   c = readchar (timeout);

   if (c == SERIAL_TIMEOUT)
     {
       if (forever)
  {
    QUIT;
    target_mourn_inferior ();
    error ("Watchdog has expired.  Target detached.\n");
  }
       if (remote_debug)
  fputs_filtered ("Timed out.\n", gdb_stdlog);
       goto retry;
     }
 }
      while (c != '$');



      val = read_frame (buf, sizeof_buf);

      if (val >= 0)
 {
   if (remote_debug)
     {
       fprintf_unfiltered (gdb_stdlog, "Packet received: ");
       fputstr_unfiltered (buf, 0, gdb_stdlog);
       fprintf_unfiltered (gdb_stdlog, "\n");
     }
   serial_write (remote_desc, "+", 1);
   return 0;
 }


    retry:
      serial_write (remote_desc, "-", 1);
    }



  printf_unfiltered ("Ignoring packet error, continuing...\n");
  serial_write (remote_desc, "+", 1);
  return 1;
}
