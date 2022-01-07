
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_ap_wps_ie ) (int ,struct wpabuf*,struct wpabuf*,struct wpabuf*) ;} ;


 scalar_t__ hostapd_build_ap_extra_ies (struct hostapd_data*,struct wpabuf**,struct wpabuf**,struct wpabuf**) ;
 int hostapd_free_ap_extra_ies (struct hostapd_data*,struct wpabuf*,struct wpabuf*,struct wpabuf*) ;
 int stub1 (int ,struct wpabuf*,struct wpabuf*,struct wpabuf*) ;

int hostapd_set_ap_wps_ie(struct hostapd_data *hapd)
{
 struct wpabuf *beacon, *proberesp, *assocresp;
 int ret;

 if (hapd->driver == ((void*)0) || hapd->driver->set_ap_wps_ie == ((void*)0))
  return 0;

 if (hostapd_build_ap_extra_ies(hapd, &beacon, &proberesp, &assocresp) <
     0)
  return -1;

 ret = hapd->driver->set_ap_wps_ie(hapd->drv_priv, beacon, proberesp,
       assocresp);

 hostapd_free_ap_extra_ies(hapd, beacon, proberesp, assocresp);

 return ret;
}
