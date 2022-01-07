
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ EAP_EKE_ENCR_AES128_CBC ;

__attribute__((used)) static int eap_eke_supp_encr(u8 encr)
{
 return encr == EAP_EKE_ENCR_AES128_CBC;
}
