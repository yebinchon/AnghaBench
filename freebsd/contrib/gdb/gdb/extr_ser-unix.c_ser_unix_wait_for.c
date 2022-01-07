
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct serial {scalar_t__ fd; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int SERIAL_ERROR ;
 int SERIAL_TIMEOUT ;
 scalar_t__ errno ;
 int select (scalar_t__,int *,int ,int *,struct timeval*) ;

int
ser_unix_wait_for (struct serial *scb, int timeout)
{
  while (1)
    {
      int numfds;
      struct timeval tv;
      fd_set readfds, exceptfds;





      tv.tv_sec = timeout;
      tv.tv_usec = 0;

      FD_ZERO (&readfds);
      FD_ZERO (&exceptfds);
      FD_SET (scb->fd, &readfds);
      FD_SET (scb->fd, &exceptfds);

      if (timeout >= 0)
 numfds = select (scb->fd + 1, &readfds, 0, &exceptfds, &tv);
      else
 numfds = select (scb->fd + 1, &readfds, 0, &exceptfds, 0);

      if (numfds <= 0)
 {
   if (numfds == 0)
     return SERIAL_TIMEOUT;
   else if (errno == EINTR)
     continue;
   else
     return SERIAL_ERROR;
 }

      return 0;
    }
}
