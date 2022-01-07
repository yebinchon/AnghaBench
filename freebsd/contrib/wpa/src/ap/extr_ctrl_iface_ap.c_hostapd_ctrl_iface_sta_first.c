
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int sta_list; } ;


 int hostapd_ctrl_iface_sta_mib (struct hostapd_data*,int ,char*,size_t) ;

int hostapd_ctrl_iface_sta_first(struct hostapd_data *hapd,
     char *buf, size_t buflen)
{
 return hostapd_ctrl_iface_sta_mib(hapd, hapd->sta_list, buf, buflen);
}
