
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MBO_OUI_TYPE ;
 int MSG_DEBUG ;
 int OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE24 (int *,int ) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_printf (int ,char*,size_t,size_t) ;

size_t mbo_add_ie(u8 *buf, size_t len, const u8 *attr, size_t attr_len)
{




 if (len < 6 + attr_len) {
  wpa_printf(MSG_DEBUG,
      "MBO: Not enough room in buffer for MBO IE: buf len = %zu, attr_len = %zu",
      len, attr_len);
  return 0;
 }

 *buf++ = WLAN_EID_VENDOR_SPECIFIC;
 *buf++ = attr_len + 4;
 WPA_PUT_BE24(buf, OUI_WFA);
 buf += 3;
 *buf++ = MBO_OUI_TYPE;
 os_memcpy(buf, attr, attr_len);

 return 6 + attr_len;
}
