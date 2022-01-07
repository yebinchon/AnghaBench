
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int DPP_ATTR_WRAPPED_DATA ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int WPA_GET_LE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

int dpp_check_attrs(const u8 *buf, size_t len)
{
 const u8 *pos, *end;
 int wrapped_data = 0;

 pos = buf;
 end = buf + len;
 while (end - pos >= 4) {
  u16 id, alen;

  id = WPA_GET_LE16(pos);
  pos += 2;
  alen = WPA_GET_LE16(pos);
  pos += 2;
  wpa_printf(MSG_MSGDUMP, "DPP: Attribute ID %04x len %u",
      id, alen);
  if (alen > end - pos) {
   wpa_printf(MSG_DEBUG,
       "DPP: Truncated message - not enough room for the attribute - dropped");
   return -1;
  }
  if (wrapped_data) {
   wpa_printf(MSG_DEBUG,
       "DPP: An unexpected attribute included after the Wrapped Data attribute");
   return -1;
  }
  if (id == DPP_ATTR_WRAPPED_DATA)
   wrapped_data = 1;
  pos += alen;
 }

 if (end != pos) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unexpected octets (%d) after the last attribute",
      (int) (end - pos));
  return -1;
 }

 return 0;
}
