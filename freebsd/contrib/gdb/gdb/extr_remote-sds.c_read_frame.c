
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBUFSIZ ;

 int fprintf_unfiltered (int ,char*,char*) ;
 int fputs_filtered (char*,int ) ;
 int gdb_stdlog ;
 int puts_filtered (char*) ;
 int readchar (int ) ;
 int remote_debug ;
 int sds_timeout ;

__attribute__((used)) static int
read_frame (char *buf)
{
  char *bp;
  int c;

  bp = buf;

  while (1)
    {
      c = readchar (sds_timeout);

      switch (c)
 {
 case 128:
   if (remote_debug)
     fputs_filtered ("Timeout in mid-message, retrying\n", gdb_stdlog);
   return 0;
 case '$':
   if (remote_debug)
     fputs_filtered ("Saw new packet start in middle of old one\n",
       gdb_stdlog);
   return 0;
 case '\r':
   break;

 case '\n':
   {
     *bp = '\000';
     if (remote_debug)
       fprintf_unfiltered (gdb_stdlog, "Received encoded: \"%s\"\n",
      buf);
     return 1;
   }

 default:
   if (bp < buf + PBUFSIZ - 1)
     {
       *bp++ = c;
       continue;
     }

   *bp = '\0';
   puts_filtered ("Message too long: ");
   puts_filtered (buf);
   puts_filtered ("\n");

   return 0;
 }
    }
}
