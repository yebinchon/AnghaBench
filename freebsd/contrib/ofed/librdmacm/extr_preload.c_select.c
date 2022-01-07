
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
 struct pollfd* fds_alloc (int) ;
 int rpoll (struct pollfd*,int,int ) ;
 int rpoll_to_select (struct pollfd*,int,int *,int *,int *) ;
 int rs_convert_timeout (struct timeval*) ;
 int select_to_rpoll (struct pollfd*,int*,int *,int *,int *) ;

int select(int nfds, fd_set *readfds, fd_set *writefds,
    fd_set *exceptfds, struct timeval *timeout)
{
 struct pollfd *fds;
 int ret;

 fds = fds_alloc(nfds);
 if (!fds)
  return ERR(ENOMEM);

 select_to_rpoll(fds, &nfds, readfds, writefds, exceptfds);
 ret = rpoll(fds, nfds, rs_convert_timeout(timeout));

 if (readfds)
  FD_ZERO(readfds);
 if (writefds)
  FD_ZERO(writefds);
 if (exceptfds)
  FD_ZERO(exceptfds);

 if (ret > 0)
  ret = rpoll_to_select(fds, nfds, readfds, writefds, exceptfds);

 return ret;
}
