
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int dummy; } ;
typedef enum wpa_ctrl_req_type { ____Placeholder_wpa_ctrl_req_type } wpa_ctrl_req_type ;



__attribute__((used)) static inline void wpas_dbus_signal_network_request(
 struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid,
 enum wpa_ctrl_req_type rtype, const char *default_txt)
{
}
