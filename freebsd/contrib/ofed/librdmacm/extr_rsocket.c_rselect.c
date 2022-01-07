
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pollfd {int dummy; } ;
typedef int fd_set ;


 int ENOMEM ;
 int ERR (int ) ;
 int FD_ZERO (int *) ;
 int free (struct pollfd*) ;
 int rpoll (struct pollfd*,int,int ) ;
 int rs_convert_timeout (struct timeval*) ;
 int rs_poll_to_select (int,struct pollfd*,int *,int *,int *) ;
 struct pollfd* rs_select_to_poll (int*,int *,int *,int *) ;

int rselect(int nfds, fd_set *readfds, fd_set *writefds,
     fd_set *exceptfds, struct timeval *timeout)
{
 struct pollfd *fds;
 int ret;

 fds = rs_select_to_poll(&nfds, readfds, writefds, exceptfds);
 if (!fds)
  return ERR(ENOMEM);

 ret = rpoll(fds, nfds, rs_convert_timeout(timeout));

 if (readfds)
  FD_ZERO(readfds);
 if (writefds)
  FD_ZERO(writefds);
 if (exceptfds)
  FD_ZERO(exceptfds);

 if (ret > 0)
  ret = rs_poll_to_select(nfds, fds, readfds, writefds, exceptfds);

 free(fds);
 return ret;
}
