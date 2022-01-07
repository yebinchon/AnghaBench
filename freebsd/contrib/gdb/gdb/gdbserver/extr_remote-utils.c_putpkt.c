
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_signal ) (int ) ;} ;


 int PBUFSIZ ;
 int SIGINT ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* malloc (int ) ;
 int perror (char*) ;
 int read (int ,char*,int) ;
 scalar_t__ remote_debug ;
 int remote_desc ;
 int stderr ;
 int strlen (char*) ;
 int stub1 (int ) ;
 TYPE_1__* the_target ;
 void* tohex (unsigned char) ;
 int write (int ,char*,int) ;

int
putpkt (char *buf)
{
  int i;
  unsigned char csum = 0;
  char *buf2;
  char buf3[1];
  int cnt = strlen (buf);
  char *p;

  buf2 = malloc (PBUFSIZ);




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

  *p = '\0';



  do
    {
      int cc;

      if (write (remote_desc, buf2, p - buf2) != p - buf2)
 {
   perror ("putpkt(write)");
   return -1;
 }

      if (remote_debug)
 {
   fprintf (stderr, "putpkt (\"%s\"); [looking for ack]\n", buf2);
   fflush (stderr);
 }
      cc = read (remote_desc, buf3, 1);
      if (remote_debug)
 {
   fprintf (stderr, "[received '%c' (0x%x)]\n", buf3[0], buf3[0]);
   fflush (stderr);
 }

      if (cc <= 0)
 {
   if (cc == 0)
     fprintf (stderr, "putpkt(read): Got EOF\n");
   else
     perror ("putpkt(read)");

   free (buf2);
   return -1;
 }


      if (buf3[0] == '\003')
 (*the_target->send_signal) (SIGINT);
    }
  while (buf3[0] != '+');

  free (buf2);
  return 1;
}
