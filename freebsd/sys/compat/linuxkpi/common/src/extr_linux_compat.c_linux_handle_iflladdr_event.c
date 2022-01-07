
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int (* notifier_call ) (struct notifier_block*,int ,struct ifnet*) ;} ;
struct ifnet {int dummy; } ;


 int NETDEV_CHANGEADDR ;
 int stub1 (struct notifier_block*,int ,struct ifnet*) ;

__attribute__((used)) static void
linux_handle_iflladdr_event(void *arg, struct ifnet *ifp)
{
 struct notifier_block *nb;

 nb = arg;
 nb->notifier_call(nb, NETDEV_CHANGEADDR, ifp);
}
