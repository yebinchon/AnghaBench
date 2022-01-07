
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_eke_session {scalar_t__ encr; scalar_t__ mac; int ke; int ki; } ;


 size_t AES_BLOCK_SIZE ;
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ;
 int EAP_EKE_MAX_HASH_LEN ;
 scalar_t__ EAP_EKE_PRF_HMAC_SHA1 ;
 scalar_t__ EAP_EKE_PRF_HMAC_SHA2_256 ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 size_t SHA1_MAC_LEN ;
 size_t SHA256_MAC_LEN ;
 scalar_t__ aes_128_cbc_decrypt (int ,int const*,int *,size_t) ;
 scalar_t__ eap_eke_mac (scalar_t__,int ,int const*,size_t,int *) ;
 scalar_t__ os_memcmp_const (int *,int const*,size_t) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

int eap_eke_decrypt_prot(struct eap_eke_session *sess,
    const u8 *prot, size_t prot_len,
    u8 *data, size_t *data_len)
{
 size_t block_size, icv_len;
 u8 icv[EAP_EKE_MAX_HASH_LEN];

 if (sess->encr == EAP_EKE_ENCR_AES128_CBC)
  block_size = AES_BLOCK_SIZE;
 else
  return -1;

 if (sess->mac == EAP_EKE_PRF_HMAC_SHA1)
  icv_len = SHA1_MAC_LEN;
 else if (sess->mac == EAP_EKE_PRF_HMAC_SHA2_256)
  icv_len = SHA256_MAC_LEN;
 else
  return -1;

 if (prot_len < 2 * block_size + icv_len ||
     (prot_len - icv_len) % block_size)
  return -1;

 if (eap_eke_mac(sess->mac, sess->ki, prot + block_size,
   prot_len - block_size - icv_len, icv) < 0)
  return -1;
 if (os_memcmp_const(icv, prot + prot_len - icv_len, icv_len) != 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: ICV mismatch in Prot() data");
  return -1;
 }

 if (*data_len < prot_len - block_size - icv_len) {
  wpa_printf(MSG_INFO, "EAP-EKE: Not enough room for decrypted Prot() data");
  return -1;
 }

 *data_len = prot_len - block_size - icv_len;
 os_memcpy(data, prot + block_size, *data_len);
 if (aes_128_cbc_decrypt(sess->ke, prot, data, *data_len) < 0) {
  wpa_printf(MSG_INFO, "EAP-EKE: Failed to decrypt Prot() data");
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "EAP-EKE: Decrypted Prot() data",
   data, *data_len);

 return 0;
}
