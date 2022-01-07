
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static char *eap_type_text(u8 type)
{
 switch (type) {
 case 138: return "Identity";
 case 135: return "Notification";
 case 136: return "Nak";
 case 129: return "TLS";
 case 128: return "TTLS";
 case 133: return "PEAP";
 case 130: return "SIM";
 case 139: return "GTC";
 case 137: return "MD5";
 case 134: return "OTP";
 case 140: return "FAST";
 case 131: return "SAKE";
 case 132: return "PSK";
 default: return "Unknown";
 }
}
