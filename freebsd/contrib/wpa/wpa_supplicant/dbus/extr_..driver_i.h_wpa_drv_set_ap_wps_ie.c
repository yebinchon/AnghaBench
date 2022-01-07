
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_ap_wps_ie ) (int ,struct wpabuf const*,struct wpabuf const*,struct wpabuf const*) ;} ;


 int stub1 (int ,struct wpabuf const*,struct wpabuf const*,struct wpabuf const*) ;

__attribute__((used)) static inline int wpa_drv_set_ap_wps_ie(struct wpa_supplicant *wpa_s,
     const struct wpabuf *beacon,
     const struct wpabuf *proberesp,
     const struct wpabuf *assocresp)
{
 if (!wpa_s->driver->set_ap_wps_ie)
  return -1;
 return wpa_s->driver->set_ap_wps_ie(wpa_s->drv_priv, beacon,
         proberesp, assocresp);
}
