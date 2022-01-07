
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {int dummy; } ;
struct pollfd {scalar_t__ revents; int events; int fd; } ;
typedef int nfds_t ;


 int idm ;
 struct rsocket* idm_lookup (int *,int ) ;
 int poll (struct pollfd*,int,int ) ;
 int rs_poll_all ;
 scalar_t__ rs_poll_rs (struct rsocket*,int ,int,int ) ;

__attribute__((used)) static int rs_poll_check(struct pollfd *fds, nfds_t nfds)
{
 struct rsocket *rs;
 int i, cnt = 0;

 for (i = 0; i < nfds; i++) {
  rs = idm_lookup(&idm, fds[i].fd);
  if (rs)
   fds[i].revents = rs_poll_rs(rs, fds[i].events, 1, rs_poll_all);
  else
   poll(&fds[i], 1, 0);

  if (fds[i].revents)
   cnt++;
 }
 return cnt;
}
