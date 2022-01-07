
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int memmove (int,char const*,int) ;
 int netflush () ;
 int netobuf ;
 int nfrontp ;

void
output_datalen(const char *buf, int len)
{
 int remaining, copied;

 remaining = BUFSIZ - (nfrontp - netobuf);
 while (len > 0) {

  if ((len > BUFSIZ ? BUFSIZ : len) > remaining) {
   netflush();
   remaining = BUFSIZ - (nfrontp - netobuf);
  }


  copied = remaining > len ? len : remaining;
  memmove(nfrontp, buf, copied);
  nfrontp += copied;
  len -= copied;
  remaining -= copied;
  buf += copied;
 }
 return;
}
