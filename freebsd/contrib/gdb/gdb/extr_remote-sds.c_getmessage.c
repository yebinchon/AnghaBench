
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_TRIES ;
 int SERIAL_TIMEOUT ;
 int compute_checksum (int,unsigned char*,int) ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int fputs_filtered (char*,int ) ;
 int fromb64 (unsigned char*,unsigned char*,int) ;
 int gdb_stderr ;
 int gdb_stdlog ;
 int message_pending ;
 int printf_unfiltered (char*) ;
 int read_frame (unsigned char*) ;
 int readchar (int) ;
 scalar_t__ remote_debug ;
 int sds_timeout ;
 int strcpy (unsigned char*,char*) ;
 int strlen (unsigned char*) ;
 int target_mourn_inferior () ;
 scalar_t__ watchdog ;

__attribute__((used)) static int
getmessage (unsigned char *buf, int forever)
{
  int c, c2, c3;
  int tries;
  int timeout;
  int val, i, len, csum;
  unsigned char header[3];
  unsigned char inbuf[500];

  strcpy (buf, "timeout");

  if (forever)
    {
      timeout = watchdog > 0 ? watchdog : -1;
    }

  else
    timeout = sds_timeout;



  for (tries = 1; tries <= 3; tries++)
    {
      do
 {
   c = readchar (timeout);

   if (c == SERIAL_TIMEOUT)
     {
       if (forever)
  {
    target_mourn_inferior ();
    error ("Watchdog has expired.  Target detached.\n");
  }
       if (remote_debug)
  fputs_filtered ("Timed out.\n", gdb_stdlog);
       goto retry;
     }
 }
      while (c != '$' && c != '{');




      if (c == '{')
 {

   c2 = readchar (timeout);
   c3 = readchar (timeout);
   if (remote_debug)
     fprintf_unfiltered (gdb_stdlog, "Trigraph %c%c%c received\n",
    c, c2, c3);
   if (c3 == '+')
     {
       message_pending = 1;
       return 0;
     }
   continue;
 }

      val = read_frame (inbuf);

      if (val == 1)
 {
   fromb64 (inbuf, header, 4);

   fromb64 (inbuf + 4, buf, strlen (inbuf) - 4);

   len = header[2];

   csum = 0;
   csum = compute_checksum (csum, buf, len);
   csum = compute_checksum (csum, header + 1, 2);

   if (csum != header[0])
     fprintf_unfiltered (gdb_stderr,
       "Checksum mismatch: computed %d, received %d\n",
    csum, header[0]);

   if (header[2] == 0xff)
     fprintf_unfiltered (gdb_stderr, "Requesting resend...\n");

   if (remote_debug)
     {
       fprintf_unfiltered (gdb_stdlog,
    "... (Got checksum %d, id %d, length %d)\n",
      header[0], header[1], header[2]);
       fprintf_unfiltered (gdb_stdlog, "Message received: \"");
       for (i = 0; i < len; ++i)
  {
    fprintf_unfiltered (gdb_stdlog, "%02x", (unsigned char) buf[i]);
  }
       fprintf_unfiltered (gdb_stdlog, "\"\n");
     }


   return len;
 }


    retry:

      ;
    }



  printf_unfiltered ("Ignoring packet error, continuing...\n");
  return 0;
}
