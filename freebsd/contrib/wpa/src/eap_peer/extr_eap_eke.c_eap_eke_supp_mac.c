
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ EAP_EKE_MAC_HMAC_SHA1 ;
 scalar_t__ EAP_EKE_MAC_HMAC_SHA2_256 ;

__attribute__((used)) static int eap_eke_supp_mac(u8 mac)
{
 return mac == EAP_EKE_MAC_HMAC_SHA1 ||
  mac == EAP_EKE_MAC_HMAC_SHA2_256;
}
