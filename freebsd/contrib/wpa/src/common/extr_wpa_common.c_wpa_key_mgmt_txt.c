
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_PROTO_RSN ;
 int WPA_PROTO_WPA ;

const char * wpa_key_mgmt_txt(int key_mgmt, int proto)
{
 switch (key_mgmt) {
 case 140:
  if (proto == (WPA_PROTO_RSN | WPA_PROTO_WPA))
   return "WPA2+WPA/IEEE 802.1X/EAP";
  return proto == WPA_PROTO_RSN ?
   "WPA2/IEEE 802.1X/EAP" : "WPA/IEEE 802.1X/EAP";
 case 132:
  if (proto == (WPA_PROTO_RSN | WPA_PROTO_WPA))
   return "WPA2-PSK+WPA-PSK";
  return proto == WPA_PROTO_RSN ?
   "WPA2-PSK" : "WPA-PSK";
 case 135:
  return "NONE";
 case 129:
  return "WPA-NONE";
 case 139:
  return "IEEE 802.1X (no WPA)";
 case 128:
  return "WPS";
 case 130:
  return "SAE";
 case 141:
  return "FT-SAE";
 case 134:
  return "OSEN";
 case 137:
  return "WPA2-EAP-SUITE-B";
 case 136:
  return "WPA2-EAP-SUITE-B-192";
 case 148:
  return "FILS-SHA256";
 case 147:
  return "FILS-SHA384";
 case 146:
  return "FT-FILS-SHA256";
 case 145:
  return "FT-FILS-SHA384";
 case 133:
  return "OWE";
 case 149:
  return "DPP";
 default:
  return "UNKNOWN";
 }
}
