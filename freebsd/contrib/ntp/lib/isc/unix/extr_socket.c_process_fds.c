
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* pipe_fds; scalar_t__ maxsocks; } ;
typedef TYPE_1__ isc__socketmgr_t ;
typedef int fd_set ;


 int FD_ISSET (int,int *) ;
 int REQUIRE (int) ;
 int process_fd (TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static void
process_fds(isc__socketmgr_t *manager, int maxfd, fd_set *readfds,
     fd_set *writefds)
{
 int i;

 REQUIRE(maxfd <= (int)manager->maxsocks);

 for (i = 0; i < maxfd; i++) {




  process_fd(manager, i, FD_ISSET(i, readfds),
      FD_ISSET(i, writefds));
 }
}
