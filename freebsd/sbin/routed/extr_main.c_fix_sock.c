
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbuf ;
typedef int on ;


 int F_SETFL ;
 int MIN_SOCKBUF ;
 int O_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int SO_PASSIFNAME ;
 int SO_RCVBUF ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int logbad (int,char*,char const*,int ) ;
 int msglog (char*,char const*,int,...) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;
 int trace_act (char*,int) ;

void
fix_sock(int sock,
  const char *name)
{
 int on;

 static int rbuf;

 if (fcntl(sock, F_SETFL, O_NONBLOCK) == -1)
  logbad(1, "fcntl(%s) O_NONBLOCK: %s",
         name, strerror(errno));
 on = 1;
 if (setsockopt(sock, SOL_SOCKET,SO_BROADCAST, &on,sizeof(on)) < 0)
  msglog("setsockopt(%s,SO_BROADCAST): %s",
         name, strerror(errno));







 if (rbuf >= (4*1024)) {
  if (setsockopt(sock, SOL_SOCKET, SO_RCVBUF,
          &rbuf, sizeof(rbuf)) < 0)
   msglog("setsockopt(%s,SO_RCVBUF=%d): %s",
          name, rbuf, strerror(errno));
 } else {
  for (rbuf = 60*1024; ; rbuf -= 4096) {
   if (setsockopt(sock, SOL_SOCKET, SO_RCVBUF,
           &rbuf, sizeof(rbuf)) == 0) {
    trace_act("RCVBUF=%d", rbuf);
    break;
   }
   if (rbuf < (4*1024)) {
    msglog("setsockopt(%s,SO_RCVBUF = %d): %s",
           name, rbuf, strerror(errno));
    break;
   }
  }
 }
}
