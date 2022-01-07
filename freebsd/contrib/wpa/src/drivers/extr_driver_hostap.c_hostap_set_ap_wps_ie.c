
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct hostap_driver_data {scalar_t__ wps_ie_len; int * wps_ie; } ;


 int hostapd_ioctl_set_generic_elem (struct hostap_driver_data*) ;
 int os_free (int *) ;
 int * os_memdup (int ,scalar_t__) ;
 int wpabuf_head (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int hostap_set_ap_wps_ie(void *priv, const struct wpabuf *beacon,
    const struct wpabuf *proberesp,
    const struct wpabuf *assocresp)
{
 struct hostap_driver_data *drv = priv;







 os_free(drv->wps_ie);
 drv->wps_ie = ((void*)0);
 drv->wps_ie_len = 0;
 if (proberesp) {
  drv->wps_ie = os_memdup(wpabuf_head(proberesp),
     wpabuf_len(proberesp));
  if (drv->wps_ie == ((void*)0))
   return -1;
  drv->wps_ie_len = wpabuf_len(proberesp);
 }

 return hostapd_ioctl_set_generic_elem(drv);
}
