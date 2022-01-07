
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_public_key {int rsa; } ;


 int CRYPT_OK ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int PK_PUBLIC ;
 int error_to_string (int) ;
 int os_memmove (int*,int*,unsigned long) ;
 int rsa_exptmod (int const*,size_t,int*,unsigned long*,int ,int *) ;
 int wpa_printf (int ,char*,...) ;

int crypto_public_key_decrypt_pkcs1(struct crypto_public_key *key,
        const u8 *crypt, size_t crypt_len,
        u8 *plain, size_t *plain_len)
{
 int res;
 unsigned long len;
 u8 *pos;

 len = *plain_len;
 res = rsa_exptmod(crypt, crypt_len, plain, &len, PK_PUBLIC,
     &key->rsa);
 if (res != CRYPT_OK) {
  wpa_printf(MSG_DEBUG, "LibTomCrypt: rsa_exptmod failed: %s",
      error_to_string(res));
  return -1;
 }
 if (len < 3 + 8 + 16 ||
     plain[0] != 0x00 || plain[1] != 0x01 || plain[2] != 0xff) {
  wpa_printf(MSG_INFO, "LibTomCrypt: Invalid signature EB "
      "structure");
  return -1;
 }

 pos = plain + 3;
 while (pos < plain + len && *pos == 0xff)
  pos++;
 if (pos - plain - 2 < 8) {

  wpa_printf(MSG_INFO, "LibTomCrypt: Too short signature "
      "padding");
  return -1;
 }

 if (pos + 16 >= plain + len || *pos != 0x00) {
  wpa_printf(MSG_INFO, "LibTomCrypt: Invalid signature EB "
      "structure (2)");
  return -1;
 }
 pos++;
 len -= pos - plain;


 os_memmove(plain, pos, len);
 *plain_len = len;

 return 0;
}
