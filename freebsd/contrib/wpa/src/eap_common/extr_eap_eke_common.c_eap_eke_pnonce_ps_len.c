
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int AES_BLOCK_SIZE ;
 scalar_t__ EAP_EKE_MAC_HMAC_SHA1 ;
 scalar_t__ EAP_EKE_MAC_HMAC_SHA2_256 ;
 int SHA1_MAC_LEN ;
 int SHA256_MAC_LEN ;

__attribute__((used)) static int eap_eke_pnonce_ps_len(u8 mac)
{
 int mac_len;

 if (mac == EAP_EKE_MAC_HMAC_SHA1)
  mac_len = SHA1_MAC_LEN;
 else if (mac == EAP_EKE_MAC_HMAC_SHA2_256)
  mac_len = SHA256_MAC_LEN;
 else
  return -1;

 return AES_BLOCK_SIZE + 2 * 16 + mac_len;
}
