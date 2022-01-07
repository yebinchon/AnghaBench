
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int (* notifier_call ) (struct notifier_block*,int ,struct ifnet*) ;} ;
struct ifnet {int dummy; } ;


 int LINK_STATE_UP ;
 int NETDEV_DOWN ;
 int NETDEV_UP ;
 int stub1 (struct notifier_block*,int ,struct ifnet*) ;
 int stub2 (struct notifier_block*,int ,struct ifnet*) ;

__attribute__((used)) static void
linux_handle_ifnet_link_event(void *arg, struct ifnet *ifp, int linkstate)
{
 struct notifier_block *nb;

 nb = arg;
 if (linkstate == LINK_STATE_UP)
  nb->notifier_call(nb, NETDEV_UP, ifp);
 else
  nb->notifier_call(nb, NETDEV_DOWN, ifp);
}
