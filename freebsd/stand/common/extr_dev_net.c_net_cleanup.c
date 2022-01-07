
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;


 scalar_t__ debug ;
 int free (int ) ;
 int netdev_name ;
 int netdev_sock ;
 int netif_close (int) ;
 int printf (char*) ;
 TYPE_1__ rootip ;

__attribute__((used)) static void
net_cleanup(void)
{

 if (netdev_sock >= 0) {




  rootip.s_addr = 0;
  free(netdev_name);
  netif_close(netdev_sock);
  netdev_sock = -1;
 }
}
