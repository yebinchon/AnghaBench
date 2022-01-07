
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int AES_BLOCK_SIZE ;
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ;
 int eap_eke_dh_len (scalar_t__) ;

__attribute__((used)) static int eap_eke_dhcomp_len(u8 dhgroup, u8 encr)
{
 int dhlen;

 dhlen = eap_eke_dh_len(dhgroup);
 if (dhlen < 0 || encr != EAP_EKE_ENCR_AES128_CBC)
  return -1;
 return AES_BLOCK_SIZE + dhlen;
}
