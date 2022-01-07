
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
const char* local_zone_type2str(enum localzone_type t)
{
 switch(t) {
  case 128: return "unset";
  case 139: return "deny";
  case 132: return "refuse";
  case 133: return "redirect";
  case 130: return "transparent";
  case 129: return "typetransparent";
  case 131: return "static";
  case 135: return "nodefault";
  case 138: return "inform";
  case 137: return "inform_deny";
  case 136: return "inform_redirect";
  case 140: return "always_transparent";
  case 141: return "always_refuse";
  case 142: return "always_nxdomain";
  case 134: return "noview";
 }
 return "badtyped";
}
