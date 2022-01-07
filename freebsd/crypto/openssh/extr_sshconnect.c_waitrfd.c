
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pollfd {int fd; int events; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int POLLIN ;
 int errno ;
 int monotime_tv (struct timeval*) ;
 int ms_subtract_diff (struct timeval*,int*) ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int
waitrfd(int fd, int *timeoutp)
{
 struct pollfd pfd;
 struct timeval t_start;
 int oerrno, r;

 monotime_tv(&t_start);
 pfd.fd = fd;
 pfd.events = POLLIN;
 for (; *timeoutp >= 0;) {
  r = poll(&pfd, 1, *timeoutp);
  oerrno = errno;
  ms_subtract_diff(&t_start, timeoutp);
  errno = oerrno;
  if (r > 0)
   return 0;
  else if (r == -1 && errno != EAGAIN)
   return -1;
  else if (r == 0)
   break;
 }

 errno = ETIMEDOUT;
 return -1;
}
