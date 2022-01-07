
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
struct sae_data {int * pmk; TYPE_1__* tmp; int * pmkid; int peer_commit_scalar; } ;
struct crypto_bignum {int dummy; } ;
typedef int null_key ;
typedef int keyseed ;
typedef int keys ;
struct TYPE_2__ {int * kck; int order_len; int order; int own_commit_scalar; int prime_len; } ;


 int MSG_DEBUG ;
 int SAE_KCK_LEN ;
 int SAE_KEYSEED_KEY_LEN ;
 int SAE_MAX_PRIME_LEN ;
 int SAE_PMKID_LEN ;
 int SAE_PMK_LEN ;
 int SHA256_MAC_LEN ;
 int crypto_bignum_add (int ,int ,struct crypto_bignum*) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int ) ;
 struct crypto_bignum* crypto_bignum_init () ;
 int crypto_bignum_mod (struct crypto_bignum*,int ,struct crypto_bignum*) ;
 int crypto_bignum_to_bin (struct crypto_bignum*,int *,int,int ) ;
 int hmac_sha256 (int *,int,int const*,int ,int *) ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (int *,int ,int) ;
 scalar_t__ sha256_prf (int *,int,char*,int *,int ,int *,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;

__attribute__((used)) static int sae_derive_keys(struct sae_data *sae, const u8 *k)
{
 u8 null_key[SAE_KEYSEED_KEY_LEN], val[SAE_MAX_PRIME_LEN];
 u8 keyseed[SHA256_MAC_LEN];
 u8 keys[SAE_KCK_LEN + SAE_PMK_LEN];
 struct crypto_bignum *tmp;
 int ret = -1;

 tmp = crypto_bignum_init();
 if (tmp == ((void*)0))
  goto fail;







 os_memset(null_key, 0, sizeof(null_key));
 hmac_sha256(null_key, sizeof(null_key), k, sae->tmp->prime_len,
      keyseed);
 wpa_hexdump_key(MSG_DEBUG, "SAE: keyseed", keyseed, sizeof(keyseed));

 crypto_bignum_add(sae->tmp->own_commit_scalar, sae->peer_commit_scalar,
     tmp);
 crypto_bignum_mod(tmp, sae->tmp->order, tmp);






 crypto_bignum_to_bin(tmp, val, sizeof(val), sae->tmp->order_len);
 wpa_hexdump(MSG_DEBUG, "SAE: PMKID", val, SAE_PMKID_LEN);
 if (sha256_prf(keyseed, sizeof(keyseed), "SAE KCK and PMK",
         val, sae->tmp->order_len, keys, sizeof(keys)) < 0)
  goto fail;
 os_memset(keyseed, 0, sizeof(keyseed));
 os_memcpy(sae->tmp->kck, keys, SAE_KCK_LEN);
 os_memcpy(sae->pmk, keys + SAE_KCK_LEN, SAE_PMK_LEN);
 os_memcpy(sae->pmkid, val, SAE_PMKID_LEN);
 os_memset(keys, 0, sizeof(keys));
 wpa_hexdump_key(MSG_DEBUG, "SAE: KCK", sae->tmp->kck, SAE_KCK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "SAE: PMK", sae->pmk, SAE_PMK_LEN);

 ret = 0;
fail:
 crypto_bignum_deinit(tmp, 0);
 return ret;
}
