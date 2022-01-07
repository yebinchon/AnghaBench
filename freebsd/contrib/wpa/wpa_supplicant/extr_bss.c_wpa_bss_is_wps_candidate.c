
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* conf; int own_addr; } ;
struct wpa_ssid {int key_mgmt; scalar_t__ ssid_len; int eap; int ssid; struct wpa_ssid* next; } ;
struct wpa_bss {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int WPA_KEY_MGMT_WPS ;
 int WPS_IE_VENDOR_TYPE ;
 int eap_is_wps_pbc_enrollee (int *) ;
 int eap_is_wps_pin_enrollee (int *) ;
 scalar_t__ os_memcmp (int ,int ,scalar_t__) ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi (struct wpa_bss*,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int wps_is_addr_authorized (struct wpabuf*,int ,int) ;
 scalar_t__ wps_is_selected_pbc_registrar (struct wpabuf*) ;

__attribute__((used)) static int wpa_bss_is_wps_candidate(struct wpa_supplicant *wpa_s,
        struct wpa_bss *bss)
{
 return 0;
}
