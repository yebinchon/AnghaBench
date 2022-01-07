
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int revents; int fd; } ;


 int FD_CLR (int ,int *) ;
 int POLLNVAL ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 int svc_fd_lock ;
 int svc_fdset ;
 int svc_getreq_common (int ) ;

void
svc_getreq_poll(struct pollfd *pfdp, int pollretval)
{
 int i;
 int fds_found;

 for (i = fds_found = 0; fds_found < pollretval; i++) {
  struct pollfd *p = &pfdp[i];

  if (p->revents) {

   fds_found++;
   if (p->revents & POLLNVAL) {
    rwlock_wrlock(&svc_fd_lock);
    FD_CLR(p->fd, &svc_fdset);
    rwlock_unlock(&svc_fd_lock);
   } else
    svc_getreq_common(p->fd);
  }
 }
}
