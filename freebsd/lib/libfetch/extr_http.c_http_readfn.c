
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpio {scalar_t__ error; int buf; scalar_t__ bufpos; scalar_t__ buflen; scalar_t__ eof; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int http_fillbuf (struct httpio*,int) ;
 int memcpy (char*,int,int) ;

__attribute__((used)) static int
http_readfn(void *v, char *buf, int len)
{
 struct httpio *io = (struct httpio *)v;
 int rlen;

 if (io->error)
  return (-1);
 if (io->eof)
  return (0);


 if (!io->buf || io->bufpos == io->buflen) {
  if ((rlen = http_fillbuf(io, len)) < 0) {
   if ((errno = io->error) == EINTR)
    io->error = 0;
   return (-1);
  } else if (rlen == 0) {
   return (0);
  }
 }

 rlen = io->buflen - io->bufpos;
 if (len < rlen)
  rlen = len;
 memcpy(buf, io->buf + io->bufpos, rlen);
 io->bufpos += rlen;
 return (rlen);
}
