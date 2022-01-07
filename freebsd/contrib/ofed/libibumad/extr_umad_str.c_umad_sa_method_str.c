
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 char const* umad_common_method_str (int) ;

__attribute__((used)) static const char * umad_sa_method_str(uint8_t method)
{
 switch(method) {
  case 130:
   return ("GetTable");
  case 129:
   return ("GetTableResp");
  case 134:
   return ("Delete");
  case 133:
   return ("DeleteResp");
  case 132:
   return ("GetMulti");
  case 131:
   return ("GetMultiResp");
  case 128:
   return ("GetTraceTable");
  default:
   return (umad_common_method_str(method));
 }
}
