
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_supplicant* p2pdev; } ;
typedef enum wpa_vendor_elem_frame { ____Placeholder_wpa_vendor_elem_frame } wpa_vendor_elem_frame ;
struct wpa_supplicant *
wpas_vendor_elem(struct wpa_supplicant *wpa_s, enum wpa_vendor_elem_frame frame)
{
 switch (frame) {
 default:
  return wpa_s;
 }
}
