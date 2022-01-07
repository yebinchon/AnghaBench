
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int cred; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_build_credential (struct wpabuf*,int *) ;

__attribute__((used)) static int wps_build_ap_settings(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * AP Settings");

 if (wps_build_credential(msg, &wps->cred))
  return -1;

 return 0;
}
