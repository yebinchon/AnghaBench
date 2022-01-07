
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int WPA_IF_AP_VLAN ;
 int hostapd_if_remove (struct hostapd_data*,int ,char const*) ;

int hostapd_vlan_if_remove(struct hostapd_data *hapd, const char *ifname)
{
 return hostapd_if_remove(hapd, WPA_IF_AP_VLAN, ifname);
}
