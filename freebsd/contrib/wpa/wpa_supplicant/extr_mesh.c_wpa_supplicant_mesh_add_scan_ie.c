
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 int WLAN_EID_MESH_ID ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,size_t) ;

void wpa_supplicant_mesh_add_scan_ie(struct wpa_supplicant *wpa_s,
         struct wpabuf **extra_ie)
{

 size_t ielen = 2;

 if (wpabuf_resize(extra_ie, ielen) == 0) {
  wpabuf_put_u8(*extra_ie, WLAN_EID_MESH_ID);
  wpabuf_put_u8(*extra_ie, 0);
 }
}
