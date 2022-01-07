
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct message {size_t seq; TYPE_1__ ts; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int msg ;


 int CLOCK_MONOTONIC ;
 int ERRX (int ,char*,int ) ;
 int EXIT_FAILURE ;
 int clock_gettime (int ,TYPE_1__*) ;
 int connect ;
 int connector ;
 scalar_t__ debug ;
 int errno ;
 int getsocket (char const*,char const*,int ,int *,int) ;
 int gettimeofday (struct timeval*,int *) ;
 int send (int,struct message*,int,int ) ;
 int sendto (int,struct message*,int,int ,void*,int ) ;
 int show (char*,struct message*) ;
 int ss ;
 int strerror (int ) ;
 int synchronize (int const,int) ;
 int usleep (int) ;

__attribute__((used)) static int
sender(const int fd, const char *host, const char *port, size_t n, bool conn,
    bool bug)
{
 int s;
 ssize_t l;
 struct message msg;

 socklen_t slen;

 s = getsocket(host, port, conn ? connect : connector, &slen, bug);


 if (synchronize(fd, 1) == -1)
  return -1;

 for (msg.seq = 0; msg.seq < n; msg.seq++) {




  struct timeval tv;
  if (gettimeofday(&tv, ((void*)0)) == -1)
   ERRX(EXIT_FAILURE, "clock (%s)", strerror(errno));
  msg.ts.tv_sec = tv.tv_sec;
  msg.ts.tv_nsec = tv.tv_usec * 1000;

  if (debug)
   show("sending", &msg);
  l = conn ? send(s, &msg, sizeof(msg), 0) :
      sendto(s, &msg, sizeof(msg), 0, (void *)&ss, slen);
  if (l == -1)
   ERRX(EXIT_FAILURE, "send (%s)", strerror(errno));
  usleep(100);
 }


 if (synchronize(fd, 1) == -1)
  return -1;

 return 0;
}
