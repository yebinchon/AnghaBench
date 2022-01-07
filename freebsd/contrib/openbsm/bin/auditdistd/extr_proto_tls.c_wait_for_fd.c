
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int EINTR ;
 int ETIMEDOUT ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int PJDLOG_ASSERT (int) ;
 int errno ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
wait_for_fd(int fd, int timeout)
{
 struct timeval tv;
 fd_set fdset;
 int error, ret;

 error = 0;

 for (;;) {
  FD_ZERO(&fdset);
  FD_SET(fd, &fdset);

  tv.tv_sec = timeout;
  tv.tv_usec = 0;

  ret = select(fd + 1, ((void*)0), &fdset, ((void*)0),
      timeout == -1 ? ((void*)0) : &tv);
  if (ret == 0) {
   error = ETIMEDOUT;
   break;
  } else if (ret == -1) {
   if (errno == EINTR)
    continue;
   error = errno;
   break;
  }
  PJDLOG_ASSERT(ret > 0);
  PJDLOG_ASSERT(FD_ISSET(fd, &fdset));
  break;
 }

 return (error);
}
