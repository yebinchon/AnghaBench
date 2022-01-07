
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ isc_boolean_t ;
struct TYPE_10__ {scalar_t__* fdstate; int * fdlock; TYPE_2__** fds; } ;
typedef TYPE_1__ isc__socketmgr_t ;
struct TYPE_11__ {int lock; scalar_t__ connecting; scalar_t__ listener; } ;
typedef TYPE_2__ isc__socket_t ;


 scalar_t__ CLOSE_PENDING ;
 int FDLOCK_ID (int) ;
 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 int SELECT_POKE_READ ;
 int SELECT_POKE_WRITE ;
 int SOCK_DEAD (TYPE_2__*) ;
 int UNLOCK (int *) ;
 int dispatch_accept (TYPE_2__*) ;
 int dispatch_connect (TYPE_2__*) ;
 int dispatch_recv (TYPE_2__*) ;
 int dispatch_send (TYPE_2__*) ;
 int unwatch_fd (TYPE_1__*,int,int ) ;

__attribute__((used)) static void
process_fd(isc__socketmgr_t *manager, int fd, isc_boolean_t readable,
    isc_boolean_t writeable)
{
 isc__socket_t *sock;
 isc_boolean_t unlock_sock;
 isc_boolean_t unwatch_read = ISC_FALSE, unwatch_write = ISC_FALSE;
 int lockid = FDLOCK_ID(fd);




 LOCK(&manager->fdlock[lockid]);
 if (manager->fdstate[fd] == CLOSE_PENDING) {
  UNLOCK(&manager->fdlock[lockid]);

  (void)unwatch_fd(manager, fd, SELECT_POKE_READ);
  (void)unwatch_fd(manager, fd, SELECT_POKE_WRITE);
  return;
 }

 sock = manager->fds[fd];
 unlock_sock = ISC_FALSE;
 if (readable) {
  if (sock == ((void*)0)) {
   unwatch_read = ISC_TRUE;
   goto check_write;
  }
  unlock_sock = ISC_TRUE;
  LOCK(&sock->lock);
  if (!SOCK_DEAD(sock)) {
   if (sock->listener)
    dispatch_accept(sock);
   else
    dispatch_recv(sock);
  }
  unwatch_read = ISC_TRUE;
 }
check_write:
 if (writeable) {
  if (sock == ((void*)0)) {
   unwatch_write = ISC_TRUE;
   goto unlock_fd;
  }
  if (!unlock_sock) {
   unlock_sock = ISC_TRUE;
   LOCK(&sock->lock);
  }
  if (!SOCK_DEAD(sock)) {
   if (sock->connecting)
    dispatch_connect(sock);
   else
    dispatch_send(sock);
  }
  unwatch_write = ISC_TRUE;
 }
 if (unlock_sock)
  UNLOCK(&sock->lock);

 unlock_fd:
 UNLOCK(&manager->fdlock[lockid]);
 if (unwatch_read)
  (void)unwatch_fd(manager, fd, SELECT_POKE_READ);
 if (unwatch_write)
  (void)unwatch_fd(manager, fd, SELECT_POKE_WRITE);

}
