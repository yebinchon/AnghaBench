
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MD5_MAC_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SHA512_MAC_LEN ;
 int hmac_md5 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha1 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha256 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha384 (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha512 (int const*,size_t,int const*,size_t,int *) ;
 int omac1_aes_128 (int const*,int const*,size_t,int *) ;
 int os_memcpy (int *,int *,int) ;
 int wpa_printf (int ,char*,...) ;

int wpa_eapol_key_mic(const u8 *key, size_t key_len, int akmp, int ver,
        const u8 *buf, size_t len, u8 *mic)
{
 u8 hash[SHA512_MAC_LEN];

 if (key_len == 0) {
  wpa_printf(MSG_DEBUG,
      "WPA: KCK not set - cannot calculate MIC");
  return -1;
 }

 switch (ver) {

 case 137:
  wpa_printf(MSG_DEBUG, "WPA: EAPOL-Key MIC using HMAC-MD5");
  return hmac_md5(key, key_len, buf, len, mic);

 case 136:
  wpa_printf(MSG_DEBUG, "WPA: EAPOL-Key MIC using HMAC-SHA1");
  if (hmac_sha1(key, key_len, buf, len, hash))
   return -1;
  os_memcpy(mic, hash, MD5_MAC_LEN);
  break;





 case 138:
  switch (akmp) {
  default:
   wpa_printf(MSG_DEBUG,
       "WPA: EAPOL-Key MIC algorithm not known (AKM-defined - akmp=0x%x)",
       akmp);
   return -1;
  }
  break;
 default:
  wpa_printf(MSG_DEBUG,
      "WPA: EAPOL-Key MIC algorithm not known (ver=%d)",
      ver);
  return -1;
 }

 return 0;
}
