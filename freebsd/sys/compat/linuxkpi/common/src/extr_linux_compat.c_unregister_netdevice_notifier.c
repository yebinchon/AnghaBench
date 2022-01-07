
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int * tags; } ;


 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 size_t NETDEV_CHANGEADDR ;
 size_t NETDEV_REGISTER ;
 size_t NETDEV_UNREGISTER ;
 size_t NETDEV_UP ;
 int iflladdr_event ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int ifnet_link_event ;

int
unregister_netdevice_notifier(struct notifier_block *nb)
{

 EVENTHANDLER_DEREGISTER(ifnet_link_event,
     nb->tags[NETDEV_UP]);
 EVENTHANDLER_DEREGISTER(ifnet_arrival_event,
     nb->tags[NETDEV_REGISTER]);
 EVENTHANDLER_DEREGISTER(ifnet_departure_event,
     nb->tags[NETDEV_UNREGISTER]);
 EVENTHANDLER_DEREGISTER(iflladdr_event,
     nb->tags[NETDEV_CHANGEADDR]);

 return (0);
}
