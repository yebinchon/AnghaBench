
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ bool_t ;
struct TYPE_4__ {int xp_fd; } ;
typedef TYPE_1__ SVCXPRT ;


 int FD_CLR (int,int *) ;
 int FD_SETSIZE ;
 TYPE_1__** __svc_xports ;
 int assert (int ) ;
 int rwlock_unlock (int *) ;
 int rwlock_wrlock (int *) ;
 int svc_fd_lock ;
 int svc_fdset ;
 int svc_maxfd ;

__attribute__((used)) static void
__xprt_do_unregister(SVCXPRT *xprt, bool_t dolock)
{
 int sock;

 assert(xprt != ((void*)0));

 sock = xprt->xp_fd;

 if (dolock)
  rwlock_wrlock(&svc_fd_lock);
 if ((sock < FD_SETSIZE) && (__svc_xports[sock] == xprt)) {
  __svc_xports[sock] = ((void*)0);
  FD_CLR(sock, &svc_fdset);
  if (sock >= svc_maxfd) {
   for (svc_maxfd--; svc_maxfd>=0; svc_maxfd--)
    if (__svc_xports[svc_maxfd])
     break;
  }
 } else if ((sock == FD_SETSIZE) && (__svc_xports[sock] == xprt))
  __svc_xports[sock] = ((void*)0);
 if (dolock)
  rwlock_unlock(&svc_fd_lock);
}
