
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ RSN_SELECTOR_GET (int const*) ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_NONE ;
 scalar_t__ WPA_CIPHER_SUITE_CCMP ;
 scalar_t__ WPA_CIPHER_SUITE_NONE ;
 scalar_t__ WPA_CIPHER_SUITE_TKIP ;
 int WPA_CIPHER_TKIP ;

__attribute__((used)) static int wpa_selector_to_bitfield(const u8 *s)
{
 if (RSN_SELECTOR_GET(s) == WPA_CIPHER_SUITE_NONE)
  return WPA_CIPHER_NONE;
 if (RSN_SELECTOR_GET(s) == WPA_CIPHER_SUITE_TKIP)
  return WPA_CIPHER_TKIP;
 if (RSN_SELECTOR_GET(s) == WPA_CIPHER_SUITE_CCMP)
  return WPA_CIPHER_CCMP;
 return 0;
}
