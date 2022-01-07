
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {void** tags; } ;


 void* EVENTHANDLER_REGISTER (int ,int ,struct notifier_block*,int ) ;
 size_t NETDEV_CHANGEADDR ;
 size_t NETDEV_REGISTER ;
 size_t NETDEV_UNREGISTER ;
 size_t NETDEV_UP ;
 int iflladdr_event ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int ifnet_link_event ;
 int linux_handle_iflladdr_event ;
 int linux_handle_ifnet_arrival_event ;
 int linux_handle_ifnet_departure_event ;
 int linux_handle_ifnet_link_event ;

int
register_netdevice_notifier(struct notifier_block *nb)
{

 nb->tags[NETDEV_UP] = EVENTHANDLER_REGISTER(
     ifnet_link_event, linux_handle_ifnet_link_event, nb, 0);
 nb->tags[NETDEV_REGISTER] = EVENTHANDLER_REGISTER(
     ifnet_arrival_event, linux_handle_ifnet_arrival_event, nb, 0);
 nb->tags[NETDEV_UNREGISTER] = EVENTHANDLER_REGISTER(
     ifnet_departure_event, linux_handle_ifnet_departure_event, nb, 0);
 nb->tags[NETDEV_CHANGEADDR] = EVENTHANDLER_REGISTER(
     iflladdr_event, linux_handle_iflladdr_event, nb, 0);

 return (0);
}
