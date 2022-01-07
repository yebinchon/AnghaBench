
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int hostapd_drv_stop_ap (struct hostapd_data*) ;

int hostapd_ctrl_iface_stop_ap(struct hostapd_data *hapd)
{
 return hostapd_drv_stop_ap(hapd);
}
