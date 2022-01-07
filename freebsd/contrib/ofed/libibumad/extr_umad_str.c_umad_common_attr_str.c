
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;





 int be16toh (int ) ;

__attribute__((used)) static const char *umad_common_attr_str(__be16 attr_id)
{
 switch(be16toh(attr_id)) {
  case 130:
   return "Class Port Info";
  case 128:
   return "Notice";
  case 129:
   return "Inform Info";
  default:
   return "<unknown>";
 }
}
