
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *radius_code_string(u8 code)
{
 switch (code) {
 case 139: return "Access-Request";
 case 142: return "Access-Accept";
 case 140: return "Access-Reject";
 case 138: return "Accounting-Request";
 case 137: return "Accounting-Response";
 case 141: return "Access-Challenge";
 case 128: return "Status-Server";
 case 129: return "Status-Client";
 case 130: return "Reserved";
 case 131: return "Disconnect-Request";
 case 133: return "Disconnect-ACK";
 case 132: return "Disconnect-NAK";
 case 134: return "CoA-Request";
 case 136: return "CoA-ACK";
 case 135: return "CoA-NAK";
 default: return "?Unknown?";
 }
}
