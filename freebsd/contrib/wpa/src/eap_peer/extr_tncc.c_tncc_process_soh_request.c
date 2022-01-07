
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int EAP_TLV_VENDOR_SPECIFIC_TLV ;
 scalar_t__ EAP_VENDOR_MICROSOFT ;
 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 scalar_t__ WPA_GET_BE32 (int const*) ;
 struct wpabuf* tncc_build_soh (int) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

struct wpabuf * tncc_process_soh_request(int ver, const u8 *data, size_t len)
{
 const u8 *pos;

 wpa_hexdump(MSG_DEBUG, "TNC: SoH Request", data, len);

 if (len < 12)
  return ((void*)0);


 pos = data;


 if (WPA_GET_BE16(pos) != EAP_TLV_VENDOR_SPECIFIC_TLV)
  return ((void*)0);
 pos += 2;


 if (WPA_GET_BE16(pos) < 8)
  return ((void*)0);
 pos += 2;


 if (WPA_GET_BE32(pos) != EAP_VENDOR_MICROSOFT)
  return ((void*)0);
 pos += 4;


 if (WPA_GET_BE16(pos) != 0x02 )
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "TNC: SoH Request TLV received");

 return tncc_build_soh(2);
}
