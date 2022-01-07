
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* interfaces; } ;
struct TYPE_2__ {int (* for_each_interface ) (TYPE_1__*,int ,int*) ;} ;


 int count_interface_cb ;
 int stub1 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static int interface_count(struct hostapd_iface *iface)
{
 int count = 0;
 if (iface->interfaces == ((void*)0) ||
     iface->interfaces->for_each_interface == ((void*)0))
  return 0;
 iface->interfaces->for_each_interface(iface->interfaces,
           count_interface_cb, &count);
 return count;
}
