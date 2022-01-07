
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int * tags; } ;


 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 size_t NETDEV_CHANGEIFADDR ;
 int ifaddr_event ;

int
unregister_inetaddr_notifier(struct notifier_block *nb)
{

 EVENTHANDLER_DEREGISTER(ifaddr_event,
     nb->tags[NETDEV_CHANGEIFADDR]);

 return (0);
}
