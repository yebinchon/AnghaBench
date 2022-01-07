
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int kdf_out ;


 scalar_t__ EAP_EMSK_LEN ;
 int EAP_GPSK_CIPHER_AES ;
 size_t EAP_GPSK_PK_LEN_AES ;
 size_t EAP_GPSK_SK_LEN_AES ;
 scalar_t__ EAP_MSK_LEN ;
 int eap_gpsk_derive_keys_helper (int ,int *,int,int const*,size_t,int const*,size_t,int *,int *,int *,size_t,int *,size_t) ;

__attribute__((used)) static int eap_gpsk_derive_keys_aes(const u8 *psk, size_t psk_len,
        const u8 *seed, size_t seed_len,
        u8 *msk, u8 *emsk, u8 *sk, size_t *sk_len,
        u8 *pk, size_t *pk_len)
{


 u8 kdf_out[EAP_MSK_LEN + EAP_EMSK_LEN + 16 +
     16];
 *sk_len = 16;
 *pk_len = 16;

 return eap_gpsk_derive_keys_helper(EAP_GPSK_CIPHER_AES,
        kdf_out, sizeof(kdf_out),
        psk, psk_len, seed, seed_len,
        msk, emsk, sk, *sk_len,
        pk, *pk_len);
}
