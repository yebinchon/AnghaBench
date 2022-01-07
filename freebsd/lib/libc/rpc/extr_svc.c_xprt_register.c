
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int xp_fd; } ;
typedef TYPE_1__ SVCXPRT ;


 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 TYPE_1__** __svc_xports ;
 int assert (int ) ;
 int max (int ,int) ;
 scalar_t__ mem_alloc (int) ;
 int memset (TYPE_1__**,char,int) ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 int svc_fd_lock ;
 int svc_fdset ;
 int svc_maxfd ;

void
xprt_register(SVCXPRT *xprt)
{
 int sock;

 assert(xprt != ((void*)0));

 sock = xprt->xp_fd;

 rwlock_wrlock(&svc_fd_lock);
 if (__svc_xports == ((void*)0)) {
  __svc_xports = (SVCXPRT **)
   mem_alloc((FD_SETSIZE + 1) * sizeof(SVCXPRT *));
  if (__svc_xports == ((void*)0)) {
   rwlock_unlock(&svc_fd_lock);
   return;
  }
  memset(__svc_xports, '\0', (FD_SETSIZE + 1) * sizeof(SVCXPRT *));
 }
 if (sock < FD_SETSIZE) {
  __svc_xports[sock] = xprt;
  FD_SET(sock, &svc_fdset);
  svc_maxfd = max(svc_maxfd, sock);
 } else if (sock == FD_SETSIZE)
  __svc_xports[sock] = xprt;
 rwlock_unlock(&svc_fd_lock);
}
