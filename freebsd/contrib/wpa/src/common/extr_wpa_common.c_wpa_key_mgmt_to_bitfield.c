
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ RSN_SELECTOR_GET (int const*) ;
 scalar_t__ WPA_AUTH_KEY_MGMT_NONE ;
 scalar_t__ WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X ;
 scalar_t__ WPA_AUTH_KEY_MGMT_UNSPEC_802_1X ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_WPA_NONE ;

__attribute__((used)) static int wpa_key_mgmt_to_bitfield(const u8 *s)
{
 if (RSN_SELECTOR_GET(s) == WPA_AUTH_KEY_MGMT_UNSPEC_802_1X)
  return WPA_KEY_MGMT_IEEE8021X;
 if (RSN_SELECTOR_GET(s) == WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X)
  return WPA_KEY_MGMT_PSK;
 if (RSN_SELECTOR_GET(s) == WPA_AUTH_KEY_MGMT_NONE)
  return WPA_KEY_MGMT_WPA_NONE;
 return 0;
}
