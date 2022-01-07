
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int own_addr; } ;


 int ETH_ALEN ;
 int IFNAMSIZ ;
 int WPA_IF_AP_VLAN ;
 int hostapd_if_add (struct hostapd_data*,int ,char const*,int ,int *,int *,char*,int *,int *,int ) ;

int hostapd_vlan_if_add(struct hostapd_data *hapd, const char *ifname)
{
 char force_ifname[IFNAMSIZ];
 u8 if_addr[ETH_ALEN];
 return hostapd_if_add(hapd, WPA_IF_AP_VLAN, ifname, hapd->own_addr,
         ((void*)0), ((void*)0), force_ifname, if_addr, ((void*)0), 0);
}
