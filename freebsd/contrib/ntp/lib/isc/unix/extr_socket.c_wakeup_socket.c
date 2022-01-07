
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
struct TYPE_5__ {scalar_t__* fdstate; int * fdlock; scalar_t__ maxsocks; } ;
typedef TYPE_1__ isc__socketmgr_t ;


 scalar_t__ CLOSED ;
 scalar_t__ CLOSE_PENDING ;
 int FDLOCK_ID (int) ;
 int INSIST (int) ;
 int ISC_LOGCATEGORY_GENERAL ;
 int ISC_LOGMODULE_SOCKET ;
 int ISC_LOG_ERROR ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 scalar_t__ MANAGED ;
 int SELECT_POKE_CLOSE ;
 int SELECT_POKE_READ ;
 int SELECT_POKE_WRITE ;
 int UNLOCK (int *) ;
 int close (int) ;
 int isc_lctx ;
 int isc_log_write (int ,int ,int ,int ,char*,int,int ) ;
 int isc_result_totext (scalar_t__) ;
 int unwatch_fd (TYPE_1__*,int,int ) ;
 scalar_t__ watch_fd (TYPE_1__*,int,int) ;

__attribute__((used)) static void
wakeup_socket(isc__socketmgr_t *manager, int fd, int msg) {
 isc_result_t result;
 int lockid = FDLOCK_ID(fd);







 INSIST(fd >= 0 && fd < (int)manager->maxsocks);

 if (msg == SELECT_POKE_CLOSE) {

  INSIST(manager->fdstate[fd] == CLOSE_PENDING);
  manager->fdstate[fd] = CLOSED;
  (void)unwatch_fd(manager, fd, SELECT_POKE_READ);
  (void)unwatch_fd(manager, fd, SELECT_POKE_WRITE);
  (void)close(fd);
  return;
 }

 LOCK(&manager->fdlock[lockid]);
 if (manager->fdstate[fd] == CLOSE_PENDING) {
  UNLOCK(&manager->fdlock[lockid]);
  (void)unwatch_fd(manager, fd, SELECT_POKE_READ);
  (void)unwatch_fd(manager, fd, SELECT_POKE_WRITE);
  return;
 }
 if (manager->fdstate[fd] != MANAGED) {
  UNLOCK(&manager->fdlock[lockid]);
  return;
 }
 UNLOCK(&manager->fdlock[lockid]);




 result = watch_fd(manager, fd, msg);
 if (result != ISC_R_SUCCESS) {





  isc_log_write(isc_lctx, ISC_LOGCATEGORY_GENERAL,
         ISC_LOGMODULE_SOCKET, ISC_LOG_ERROR,
         "failed to start watching FD (%d): %s",
         fd, isc_result_totext(result));
 }
}
