
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_bss_params {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_ieee8021x ) (int ,struct wpa_bss_params*) ;} ;


 int stub1 (int ,struct wpa_bss_params*) ;

int hostapd_set_ieee8021x(struct hostapd_data *hapd,
     struct wpa_bss_params *params)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_ieee8021x == ((void*)0))
  return 0;
 return hapd->driver->set_ieee8021x(hapd->drv_priv, params);
}
