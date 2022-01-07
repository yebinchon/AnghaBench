
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {scalar_t__ type; int cq_wait_lock; } ;
struct pollfd {scalar_t__ revents; int events; int fd; } ;
typedef int nfds_t ;


 scalar_t__ SOCK_STREAM ;
 int ds_get_cq_event (struct rsocket*) ;
 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int idm ;
 struct rsocket* idm_lookup (int *,int ) ;
 int rs_get_cq_event (struct rsocket*) ;
 int rs_poll_all ;
 scalar_t__ rs_poll_rs (struct rsocket*,int ,int,int ) ;

__attribute__((used)) static int rs_poll_events(struct pollfd *rfds, struct pollfd *fds, nfds_t nfds)
{
 struct rsocket *rs;
 int i, cnt = 0;

 for (i = 0; i < nfds; i++) {
  if (!rfds[i].revents)
   continue;

  rs = idm_lookup(&idm, fds[i].fd);
  if (rs) {
   fastlock_acquire(&rs->cq_wait_lock);
   if (rs->type == SOCK_STREAM)
    rs_get_cq_event(rs);
   else
    ds_get_cq_event(rs);
   fastlock_release(&rs->cq_wait_lock);
   fds[i].revents = rs_poll_rs(rs, fds[i].events, 1, rs_poll_all);
  } else {
   fds[i].revents = rfds[i].revents;
  }
  if (fds[i].revents)
   cnt++;
 }
 return cnt;
}
