
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int EAP_GPSK_RAND_LEN ;
 int EAP_GPSK_VENDOR_IETF ;
 int MSG_DEBUG ;
 int eap_gpsk_derive_keys_aes (int const*,size_t,int *,int,int *,int *,int *,size_t*,int *,size_t*) ;
 int eap_gpsk_derive_keys_sha256 (int const*,size_t,int *,int,int *,int *,int *,size_t*) ;
 int os_free (int *) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

int eap_gpsk_derive_keys(const u8 *psk, size_t psk_len, int vendor,
    int specifier,
    const u8 *rand_peer, const u8 *rand_server,
    const u8 *id_peer, size_t id_peer_len,
    const u8 *id_server, size_t id_server_len,
    u8 *msk, u8 *emsk, u8 *sk, size_t *sk_len,
    u8 *pk, size_t *pk_len)
{
 u8 *seed, *pos;
 int ret;

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Deriving keys (%d:%d)",
     vendor, specifier);

 if (vendor != EAP_GPSK_VENDOR_IETF)
  return -1;

 wpa_hexdump_key(MSG_DEBUG, "EAP-GPSK: PSK", psk, psk_len);


 seed = os_malloc(2 * EAP_GPSK_RAND_LEN + id_server_len + id_peer_len);
 if (seed == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Failed to allocate memory "
      "for key derivation");
  return -1;
 }

 pos = seed;
 os_memcpy(pos, rand_peer, EAP_GPSK_RAND_LEN);
 pos += EAP_GPSK_RAND_LEN;
 os_memcpy(pos, id_peer, id_peer_len);
 pos += id_peer_len;
 os_memcpy(pos, rand_server, EAP_GPSK_RAND_LEN);
 pos += EAP_GPSK_RAND_LEN;
 os_memcpy(pos, id_server, id_server_len);
 pos += id_server_len;
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Seed", seed, pos - seed);

 switch (specifier) {
 case 129:
  ret = eap_gpsk_derive_keys_aes(psk, psk_len, seed, pos - seed,
            msk, emsk, sk, sk_len,
            pk, pk_len);
  break;







 default:
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Unknown cipher %d:%d used in "
      "key derivation", vendor, specifier);
  ret = -1;
  break;
 }

 os_free(seed);

 return ret;
}
