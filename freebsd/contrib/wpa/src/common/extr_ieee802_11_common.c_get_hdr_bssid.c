
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_hdr {int const* addr3; int const* addr1; int const* addr2; int frame_control; } ;



 int WLAN_FC_GET_STYPE (int) ;
 int WLAN_FC_GET_TYPE (int) ;
 int WLAN_FC_STYPE_PSPOLL ;




 int le_to_host16 (int ) ;

const u8 * get_hdr_bssid(const struct ieee80211_hdr *hdr, size_t len)
{
 u16 fc, type, stype;





 if (len < 16)
  return ((void*)0);

 fc = le_to_host16(hdr->frame_control);
 type = WLAN_FC_GET_TYPE(fc);
 stype = WLAN_FC_GET_STYPE(fc);

 switch (type) {
 case 129:
  if (len < 24)
   return ((void*)0);
  switch (fc & (132 | 131)) {
  case 132 | 131:
  case 131:
   return hdr->addr1;
  case 132:
   return hdr->addr2;
  default:
   return ((void*)0);
  }
 case 130:
  if (stype != WLAN_FC_STYPE_PSPOLL)
   return ((void*)0);
  return hdr->addr1;
 case 128:
  return hdr->addr3;
 default:
  return ((void*)0);
 }
}
