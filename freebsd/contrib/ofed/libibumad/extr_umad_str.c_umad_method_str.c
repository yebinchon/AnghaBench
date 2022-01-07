
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ UMAD_CLASS_SUBN_ADM ;
 char const* umad_common_method_str (scalar_t__) ;
 char const* umad_sa_method_str (scalar_t__) ;

const char * umad_method_str(uint8_t mgmt_class, uint8_t method)
{
 if (mgmt_class == UMAD_CLASS_SUBN_ADM)
  return(umad_sa_method_str(method));

 return (umad_common_method_str(method));
}
