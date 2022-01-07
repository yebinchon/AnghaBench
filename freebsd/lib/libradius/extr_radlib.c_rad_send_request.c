
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct rad_handle {int dummy; } ;
typedef int fd_set ;


 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int errno ;
 int generr (struct rad_handle*,char*,int ) ;
 int gettimeofday (struct timeval*,int *) ;
 int rad_continue_send_request (struct rad_handle*,int,int*,struct timeval*) ;
 int rad_init_send_request (struct rad_handle*,int*,struct timeval*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int strerror (int ) ;
 int timeradd (struct timeval*,struct timeval*,struct timeval*) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

int
rad_send_request(struct rad_handle *h)
{
 struct timeval timelimit;
 struct timeval tv;
 int fd;
 int n;

 n = rad_init_send_request(h, &fd, &tv);

 if (n != 0)
  return n;

 gettimeofday(&timelimit, ((void*)0));
 timeradd(&tv, &timelimit, &timelimit);

 for ( ; ; ) {
  fd_set readfds;

  FD_ZERO(&readfds);
  FD_SET(fd, &readfds);

  n = select(fd + 1, &readfds, ((void*)0), ((void*)0), &tv);

  if (n == -1) {
   generr(h, "select: %s", strerror(errno));
   return -1;
  }

  if (!FD_ISSET(fd, &readfds)) {

   gettimeofday(&tv, ((void*)0));
   timersub(&timelimit, &tv, &tv);
   if (tv.tv_sec > 0 || (tv.tv_sec == 0 && tv.tv_usec > 0))

    continue;
  }

  n = rad_continue_send_request(h, n, &fd, &tv);

  if (n != 0)
   return n;

  gettimeofday(&timelimit, ((void*)0));
  timeradd(&tv, &timelimit, &timelimit);
 }
}
