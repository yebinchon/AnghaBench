
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int FILE ;


 int LOG_ERR ;
 int buffer ;
 int bufleft ;
 int buflen ;
 scalar_t__ bufpkt ;
 int bufpos ;
 int errno ;
 int fileno (int *) ;
 scalar_t__ ftello (int *) ;
 int ftruncate (int ,scalar_t__) ;
 int fwrite (int,int,int,int *) ;
 int logmsg (int ,char*,int ) ;
 int set_suspended (int) ;
 int strerror (int ) ;

int
flush_buffer(FILE *f)
{
 off_t offset;
 int len = bufpos - buffer;

 if (len <= 0)
  return (0);

 offset = ftello(f);
 if (offset == (off_t)-1) {
  set_suspended(1);
  logmsg(LOG_ERR, "Logging suspended: ftello: %s",
      strerror(errno));
  return (1);
 }

 if (fwrite(buffer, len, 1, f) != 1) {
  set_suspended(1);
  logmsg(LOG_ERR, "Logging suspended: fwrite: %s",
      strerror(errno));
  ftruncate(fileno(f), offset);
  return (1);
 }

 set_suspended(0);
 bufpos = buffer;
 bufleft = buflen;
 bufpkt = 0;

 return (0);
}
