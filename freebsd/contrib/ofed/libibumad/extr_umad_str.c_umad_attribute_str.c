
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int __be16 ;






 char const* umad_cm_attr_str (int ) ;
 char const* umad_common_attr_str (int ) ;
 char const* umad_sa_attr_str (int ) ;
 char const* umad_sm_attr_str (int ) ;

const char * umad_attribute_str(uint8_t mgmt_class, __be16 attr_id)
{
 switch (mgmt_class) {
  case 128:
  case 129:
   return(umad_sm_attr_str(attr_id));
  case 130:
   return(umad_sa_attr_str(attr_id));
  case 131:
   return(umad_cm_attr_str(attr_id));
 }

 return (umad_common_attr_str(attr_id));
}
