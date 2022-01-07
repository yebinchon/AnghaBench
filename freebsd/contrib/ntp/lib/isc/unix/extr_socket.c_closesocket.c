
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ isc_sockettype_t ;
struct TYPE_7__ {scalar_t__* fdstate; int maxfd; int* pipe_fds; int lock; int * fdlock; int stats; int ** fds; } ;
typedef TYPE_1__ isc__socketmgr_t ;
struct TYPE_8__ {scalar_t__ type; int * statsindex; } ;
typedef TYPE_2__ isc__socket_t ;


 scalar_t__ CLOSED ;
 scalar_t__ CLOSE_PENDING ;
 int FDLOCK_ID (int) ;
 int LOCK (int *) ;
 scalar_t__ MANAGED ;
 int SELECT_POKE_CLOSE ;
 int SELECT_POKE_READ ;
 int SELECT_POKE_WRITE ;
 size_t STATID_CLOSE ;
 int UNLOCK (int *) ;
 int inc_stats (int ,int ) ;
 scalar_t__ isc_sockettype_fdwatch ;
 int select_poke (TYPE_1__*,int,int ) ;
 int unwatch_fd (TYPE_1__*,int,int ) ;

__attribute__((used)) static void
closesocket(isc__socketmgr_t *manager, isc__socket_t *sock, int fd) {
 isc_sockettype_t type = sock->type;
 int lockid = FDLOCK_ID(fd);





 LOCK(&manager->fdlock[lockid]);
 manager->fds[fd] = ((void*)0);
 if (type == isc_sockettype_fdwatch)
  manager->fdstate[fd] = CLOSED;
 else
  manager->fdstate[fd] = CLOSE_PENDING;
 UNLOCK(&manager->fdlock[lockid]);
 if (type == isc_sockettype_fdwatch) {
  (void)unwatch_fd(manager, fd, SELECT_POKE_READ);
  (void)unwatch_fd(manager, fd, SELECT_POKE_WRITE);
 } else
  select_poke(manager, fd, SELECT_POKE_CLOSE);

 inc_stats(manager->stats, sock->statsindex[STATID_CLOSE]);
}
