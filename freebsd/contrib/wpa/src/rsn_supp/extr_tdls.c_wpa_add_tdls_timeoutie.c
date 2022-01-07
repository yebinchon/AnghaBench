
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpa_tdls_timeoutie {int ie_len; int value; int interval_type; int ie_type; } ;


 int WLAN_EID_TIMEOUT_INTERVAL ;
 int WLAN_TIMEOUT_KEY_LIFETIME ;
 int WPA_PUT_LE32 (int ,int ) ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (struct wpa_tdls_timeoutie*,int ,size_t) ;

__attribute__((used)) static u8 * wpa_add_tdls_timeoutie(u8 *pos, u8 *ie, size_t ie_len, u32 tsecs)
{
 struct wpa_tdls_timeoutie *lifetime = (struct wpa_tdls_timeoutie *) ie;

 os_memset(lifetime, 0, ie_len);
 lifetime->ie_type = WLAN_EID_TIMEOUT_INTERVAL;
 lifetime->ie_len = sizeof(struct wpa_tdls_timeoutie) - 2;
 lifetime->interval_type = WLAN_TIMEOUT_KEY_LIFETIME;
 WPA_PUT_LE32(lifetime->value, tsecs);
 os_memcpy(pos, ie, ie_len);
 return pos + ie_len;
}
