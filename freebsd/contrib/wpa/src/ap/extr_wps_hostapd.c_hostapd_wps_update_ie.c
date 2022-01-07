
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int hostapd_wps_for_each (struct hostapd_data*,int ,int *) ;
 int wps_update_ie ;

void hostapd_wps_update_ie(struct hostapd_data *hapd)
{
 hostapd_wps_for_each(hapd, wps_update_ie, ((void*)0));
}
