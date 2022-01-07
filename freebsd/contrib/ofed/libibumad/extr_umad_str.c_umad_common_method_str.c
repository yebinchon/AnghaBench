
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
__attribute__((used)) static const char * umad_common_method_str(uint8_t method)
{
 switch(method) {
  case 135:
   return ("Get");
  case 130:
   return ("Set");
  case 134:
   return ("GetResp");
  case 131:
   return ("Send");
  case 129:
   return ("Trap");
  case 133:
   return ("Report");
  case 132:
   return ("ReportResp");
  case 128:
   return ("TrapRepress");
  default:
   return ("<unknown");
 }
}
