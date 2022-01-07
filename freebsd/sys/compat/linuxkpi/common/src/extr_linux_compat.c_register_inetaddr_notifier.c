
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int * tags; } ;


 int EVENTHANDLER_REGISTER (int ,int ,struct notifier_block*,int ) ;
 size_t NETDEV_CHANGEIFADDR ;
 int ifaddr_event ;
 int linux_handle_ifaddr_event ;

int
register_inetaddr_notifier(struct notifier_block *nb)
{

 nb->tags[NETDEV_CHANGEIFADDR] = EVENTHANDLER_REGISTER(
     ifaddr_event, linux_handle_ifaddr_event, nb, 0);
 return (0);
}
