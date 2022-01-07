
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netif {int dummy; } ;
struct TYPE_2__ {struct netif* io_netif; } ;


 int EBADF ;
 int SOPEN_MAX ;
 int errno ;
 int netif_detach (struct netif*) ;
 TYPE_1__* sockets ;

int
netif_close(int sock)
{
 if (sock >= SOPEN_MAX) {
  errno = EBADF;
  return (-1);
 }
 netif_detach(sockets[sock].io_netif);
 sockets[sock].io_netif = (struct netif *)0;

 return (0);
}
