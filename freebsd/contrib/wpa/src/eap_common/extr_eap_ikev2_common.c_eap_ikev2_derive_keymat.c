
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_keys {int SK_d_len; int * SK_d; } ;


 scalar_t__ EAP_EMSK_LEN ;
 scalar_t__ EAP_MSK_LEN ;
 int MSG_DEBUG ;
 scalar_t__ ikev2_prf_plus (int,int *,int ,int *,size_t,int *,scalar_t__) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int *,scalar_t__) ;

int eap_ikev2_derive_keymat(int prf, struct ikev2_keys *keys,
       const u8 *i_nonce, size_t i_nonce_len,
       const u8 *r_nonce, size_t r_nonce_len,
       u8 *keymat)
{
 u8 *nonces;
 size_t nlen;


 if (keys->SK_d == ((void*)0) || i_nonce == ((void*)0) || r_nonce == ((void*)0))
  return -1;

 nlen = i_nonce_len + r_nonce_len;
 nonces = os_malloc(nlen);
 if (nonces == ((void*)0))
  return -1;
 os_memcpy(nonces, i_nonce, i_nonce_len);
 os_memcpy(nonces + i_nonce_len, r_nonce, r_nonce_len);

 if (ikev2_prf_plus(prf, keys->SK_d, keys->SK_d_len, nonces, nlen,
      keymat, EAP_MSK_LEN + EAP_EMSK_LEN)) {
  os_free(nonces);
  return -1;
 }
 os_free(nonces);

 wpa_hexdump_key(MSG_DEBUG, "EAP-IKEV2: KEYMAT",
   keymat, EAP_MSK_LEN + EAP_EMSK_LEN);

 return 0;
}
