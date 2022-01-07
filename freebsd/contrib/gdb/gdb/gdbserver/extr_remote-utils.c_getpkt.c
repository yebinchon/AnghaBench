
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 unsigned char fromhex (int) ;
 int readchar () ;
 scalar_t__ remote_debug ;
 int remote_desc ;
 int stderr ;
 int write (int ,char*,int) ;

int
getpkt (char *buf)
{
  char *bp;
  unsigned char csum, c1, c2;
  int c;

  while (1)
    {
      csum = 0;

      while (1)
 {
   c = readchar ();
   if (c == '$')
     break;
   if (remote_debug)
     {
       fprintf (stderr, "[getpkt: discarding char '%c']\n", c);
       fflush (stderr);
     }

   if (c < 0)
     return -1;
 }

      bp = buf;
      while (1)
 {
   c = readchar ();
   if (c < 0)
     return -1;
   if (c == '#')
     break;
   *bp++ = c;
   csum += c;
 }
      *bp = 0;

      c1 = fromhex (readchar ());
      c2 = fromhex (readchar ());

      if (csum == (c1 << 4) + c2)
 break;

      fprintf (stderr, "Bad checksum, sentsum=0x%x, csum=0x%x, buf=%s\n",
        (c1 << 4) + c2, csum, buf);
      write (remote_desc, "-", 1);
    }

  if (remote_debug)
    {
      fprintf (stderr, "getpkt (\"%s\");  [sending ack] \n", buf);
      fflush (stderr);
    }

  write (remote_desc, "+", 1);

  if (remote_debug)
    {
      fprintf (stderr, "[sent ack]\n");
      fflush (stderr);
    }

  return bp - buf;
}
