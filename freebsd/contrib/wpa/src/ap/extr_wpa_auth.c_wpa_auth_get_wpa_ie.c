
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_authenticator {size_t wpa_ie_len; int const* wpa_ie; } ;



const u8 * wpa_auth_get_wpa_ie(struct wpa_authenticator *wpa_auth, size_t *len)
{
 if (wpa_auth == ((void*)0))
  return ((void*)0);
 *len = wpa_auth->wpa_ie_len;
 return wpa_auth->wpa_ie;
}
