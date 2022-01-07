
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* interfaces; } ;
struct TYPE_2__ {int (* for_each_interface ) (TYPE_1__*,int (*) (struct hostapd_iface*,int *),int *) ;} ;


 int hostapd_owe_iface_iter2 (struct hostapd_iface*,int *) ;
 int stub1 (TYPE_1__*,int (*) (struct hostapd_iface*,int *),int *) ;

__attribute__((used)) static void hostapd_owe_update_trans(struct hostapd_iface *iface)
{
}
