
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tos ;
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct sockinet {scalar_t__ su_family; int si_su; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; } ;
typedef int socklen_t ;
struct TYPE_2__ {int su_len; } ;
typedef int FILE ;


 scalar_t__ AF_INET ;
 int DWARN (char*,char*) ;
 scalar_t__ EINTR ;
 int F_GETFL ;
 int F_SETFL ;
 int IPPROTO_IP ;
 int IPTOS_THROUGHPUT ;
 int IP_TOS ;
 int O_NONBLOCK ;
 int POLLIN ;
 int accept (int,struct sockaddr*,int *) ;
 int close (int) ;
 int data ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int * fdopen (int,char const*) ;
 int ftp_poll (struct pollfd*,int,int) ;
 int gettimeofday (struct timeval*,int *) ;
 TYPE_1__ myctladdr ;
 scalar_t__ passivemode ;
 scalar_t__ quit_time ;
 int setsockopt (int,int ,int ,void*,int) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int warn (char*) ;
 int warnx (char*) ;

FILE *
dataconn(const char *lmode)
{
 struct sockinet from;
 int s, flags, rv, timeout;
 struct timeval endtime, now, td;
 struct pollfd pfd[1];
 socklen_t fromlen;

 if (passivemode)
  return (fdopen(data, lmode));



 if ((flags = fcntl(data, F_GETFL, 0)) == -1)
  goto dataconn_failed;
 if (fcntl(data, F_SETFL, flags | O_NONBLOCK) == -1)
  goto dataconn_failed;




 pfd[0].fd = data;
 pfd[0].events = POLLIN;
 (void)gettimeofday(&endtime, ((void*)0));
 endtime.tv_sec += (quit_time > 0) ? quit_time: 60;

 do {
  (void)gettimeofday(&now, ((void*)0));
  timersub(&endtime, &now, &td);
  timeout = td.tv_sec * 1000 + td.tv_usec/1000;
  if (timeout < 0)
   timeout = 0;
  rv = ftp_poll(pfd, 1, timeout);
 } while (rv == -1 && errno == EINTR);
 if (rv == -1) {
  warn("Can't poll waiting before accept");
  goto dataconn_failed;
 }
 if (rv == 0) {
  warnx("Poll timeout waiting before accept");
  goto dataconn_failed;
 }


 fromlen = myctladdr.su_len;
 do {
  s = accept(data, (struct sockaddr *) &from.si_su, &fromlen);
 } while (s == -1 && errno == EINTR);
 if (s == -1) {
  warn("Can't accept data connection");
  goto dataconn_failed;
 }

 (void)close(data);
 data = s;
 if (fcntl(data, F_SETFL, flags) == -1)
  goto dataconn_failed;
 return (fdopen(data, lmode));

 dataconn_failed:
 (void)close(data);
 data = -1;
 return (((void*)0));
}
