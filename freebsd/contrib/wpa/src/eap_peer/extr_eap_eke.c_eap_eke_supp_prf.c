
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ EAP_EKE_PRF_HMAC_SHA1 ;
 scalar_t__ EAP_EKE_PRF_HMAC_SHA2_256 ;

__attribute__((used)) static int eap_eke_supp_prf(u8 prf)
{
 return prf == EAP_EKE_PRF_HMAC_SHA1 ||
  prf == EAP_EKE_PRF_HMAC_SHA2_256;
}
