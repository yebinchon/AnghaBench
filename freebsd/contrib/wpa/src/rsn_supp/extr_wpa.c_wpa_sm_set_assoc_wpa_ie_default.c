
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {size_t assoc_wpa_ie_len; int * assoc_wpa_ie; scalar_t__ test_assoc_ie; } ;


 int MSG_DEBUG ;
 int os_memcpy (int *,int ,size_t) ;
 int * os_memdup (int *,size_t) ;
 int wpa_gen_wpa_ie (struct wpa_sm*,int *,size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (scalar_t__) ;
 size_t wpabuf_len (scalar_t__) ;

int wpa_sm_set_assoc_wpa_ie_default(struct wpa_sm *sm, u8 *wpa_ie,
        size_t *wpa_ie_len)
{
 int res;

 if (sm == ((void*)0))
  return -1;
 res = wpa_gen_wpa_ie(sm, wpa_ie, *wpa_ie_len);
 if (res < 0)
  return -1;
 *wpa_ie_len = res;

 wpa_hexdump(MSG_DEBUG, "WPA: Set own WPA IE default",
      wpa_ie, *wpa_ie_len);

 if (sm->assoc_wpa_ie == ((void*)0)) {





  sm->assoc_wpa_ie = os_memdup(wpa_ie, *wpa_ie_len);
  if (sm->assoc_wpa_ie == ((void*)0))
   return -1;

  sm->assoc_wpa_ie_len = *wpa_ie_len;
 } else {
  wpa_hexdump(MSG_DEBUG,
       "WPA: Leave previously set WPA IE default",
       sm->assoc_wpa_ie, sm->assoc_wpa_ie_len);
 }

 return 0;
}
