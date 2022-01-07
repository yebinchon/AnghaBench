
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc__socketmgr_t ;


 int SELECT_POKE_SHUTDOWN ;
 int wakeup_socket (int *,int,int) ;

__attribute__((used)) static void
select_poke(isc__socketmgr_t *manager, int fd, int msg) {
 if (msg == SELECT_POKE_SHUTDOWN)
  return;
 else if (fd >= 0)
  wakeup_socket(manager, fd, msg);
 return;
}
