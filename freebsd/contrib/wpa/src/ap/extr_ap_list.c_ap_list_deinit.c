
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int hostapd_free_aps (struct hostapd_iface*) ;

void ap_list_deinit(struct hostapd_iface *iface)
{
 hostapd_free_aps(iface);
}
