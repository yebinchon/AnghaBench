
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ key_mgmt; TYPE_1__* current_ssid; } ;
struct TYPE_2__ {int eapol_flags; } ;


 int EAPOL_FLAG_REQUIRE_KEY_BROADCAST ;
 int EAPOL_FLAG_REQUIRE_KEY_UNICAST ;
 scalar_t__ WPA_KEY_MGMT_IEEE8021X_NO_WPA ;
 scalar_t__ WPA_KEY_MGMT_NONE ;
 scalar_t__ WPA_KEY_MGMT_WPA_NONE ;

__attribute__((used)) static int wpa_supplicant_dynamic_keys(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->key_mgmt == WPA_KEY_MGMT_NONE ||
     wpa_s->key_mgmt == WPA_KEY_MGMT_WPA_NONE)
  return 0;
 return 1;
}
