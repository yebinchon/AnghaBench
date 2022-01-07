
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int EINTR ;
 int FALSE ;
 int FD_ZERO (int *) ;
 int __svc_clean_idle (int *,int,int ) ;
 int _select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int _warn (char*) ;
 int errno ;
 int rwlock_rdlock (int *) ;
 int rwlock_unlock (int *) ;
 int svc_fd_lock ;
 int svc_fdset ;
 int svc_getreqset (int *) ;
 scalar_t__ svc_maxfd ;

void
svc_run(void)
{
 fd_set readfds, cleanfds;
 struct timeval timeout;

 timeout.tv_sec = 30;
 timeout.tv_usec = 0;

 for (;;) {
  rwlock_rdlock(&svc_fd_lock);
  readfds = svc_fdset;
  cleanfds = svc_fdset;
  rwlock_unlock(&svc_fd_lock);
  switch (_select(svc_maxfd+1, &readfds, ((void*)0), ((void*)0), &timeout)) {
  case -1:
   FD_ZERO(&readfds);
   if (errno == EINTR) {
    continue;
   }
   _warn("svc_run: - select failed");
   return;
  case 0:
   __svc_clean_idle(&cleanfds, 30, FALSE);
   continue;
  default:
   svc_getreqset(&readfds);
  }
 }
}
