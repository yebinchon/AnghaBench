
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {scalar_t__ mac_addr; int * wps_state; scalar_t__ primary_dev_type; } ;
struct wps_er_ap {int mac_addr; int wps_state; int pri_dev_type; } ;
struct wpabuf {int dummy; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int os_memcpy (int ,scalar_t__,int) ;
 int wpa_printf (int ,char*) ;
 int wps_er_subscribe (struct wps_er_ap*) ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;

__attribute__((used)) static void wps_er_ap_get_m1(struct wps_er_ap *ap, struct wpabuf *m1)
{
 struct wps_parse_attr attr;

 if (wps_parse_msg(m1, &attr) < 0) {
  wpa_printf(MSG_DEBUG, "WPS ER: Failed to parse M1");
  return;
 }
 if (attr.primary_dev_type)
  os_memcpy(ap->pri_dev_type, attr.primary_dev_type, 8);
 if (attr.wps_state)
  ap->wps_state = *attr.wps_state;
 if (attr.mac_addr)
  os_memcpy(ap->mac_addr, attr.mac_addr, ETH_ALEN);

 wps_er_subscribe(ap);
}
