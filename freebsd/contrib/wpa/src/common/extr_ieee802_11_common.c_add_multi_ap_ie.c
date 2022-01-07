
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MULTI_AP_OUI_TYPE ;
 int MULTI_AP_SUB_ELEM_TYPE ;
 int OUI_WFA ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE24 (int *,int ) ;

size_t add_multi_ap_ie(u8 *buf, size_t len, u8 value)
{
 u8 *pos = buf;

 if (len < 9)
  return 0;

 *pos++ = WLAN_EID_VENDOR_SPECIFIC;
 *pos++ = 7;
 WPA_PUT_BE24(pos, OUI_WFA);
 pos += 3;
 *pos++ = MULTI_AP_OUI_TYPE;
 *pos++ = MULTI_AP_SUB_ELEM_TYPE;
 *pos++ = 1;
 *pos++ = value;

 return pos - buf;
}
