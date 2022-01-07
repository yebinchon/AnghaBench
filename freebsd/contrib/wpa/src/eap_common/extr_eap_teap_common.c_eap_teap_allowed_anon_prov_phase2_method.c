
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ EAP_TYPE_EKE ;
 scalar_t__ EAP_TYPE_PWD ;

int eap_teap_allowed_anon_prov_phase2_method(u8 type)
{



 return type == EAP_TYPE_PWD || type == EAP_TYPE_EKE;
}
