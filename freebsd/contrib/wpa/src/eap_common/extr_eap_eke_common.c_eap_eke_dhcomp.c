
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct eap_eke_session {scalar_t__ encr; int dhgroup; } ;


 int AES_BLOCK_SIZE ;
 scalar_t__ EAP_EKE_ENCR_AES128_CBC ;
 int EAP_EKE_MAX_DH_LEN ;
 int MSG_DEBUG ;
 scalar_t__ aes_128_cbc_encrypt (int const*,int const*,int const*,int) ;
 int eap_eke_dh_len (int ) ;
 int os_memcpy (int const*,int const*,int) ;
 scalar_t__ random_get_bytes (int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;

int eap_eke_dhcomp(struct eap_eke_session *sess, const u8 *key, const u8 *dhpub,
     u8 *ret_dhcomp)
{
 u8 pub[EAP_EKE_MAX_DH_LEN];
 int dh_len;
 u8 iv[AES_BLOCK_SIZE];

 dh_len = eap_eke_dh_len(sess->dhgroup);
 if (dh_len < 0)
  return -1;







 if (sess->encr != EAP_EKE_ENCR_AES128_CBC)
  return -1;
 if (random_get_bytes(iv, AES_BLOCK_SIZE))
  return -1;
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: IV for Encr(key, y)",
      iv, AES_BLOCK_SIZE);
 os_memcpy(pub, dhpub, dh_len);
 if (aes_128_cbc_encrypt(key, iv, pub, dh_len) < 0)
  return -1;
 os_memcpy(ret_dhcomp, iv, AES_BLOCK_SIZE);
 os_memcpy(ret_dhcomp + AES_BLOCK_SIZE, pub, dh_len);
 wpa_hexdump(MSG_DEBUG, "EAP-EKE: DHComponent = Encr(key, y)",
      ret_dhcomp, AES_BLOCK_SIZE + dh_len);

 return 0;
}
