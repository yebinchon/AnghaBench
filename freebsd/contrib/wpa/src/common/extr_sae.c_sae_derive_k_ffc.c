
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; int peer_commit_scalar; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int prime_len; int prime; int sae_rand; int peer_commit_element_ffc; struct crypto_bignum* pwe_ffc; } ;


 int MSG_DEBUG ;
 int SAE_MAX_PRIME_LEN ;
 int crypto_bignum_deinit (struct crypto_bignum*,int) ;
 scalar_t__ crypto_bignum_exptmod (struct crypto_bignum*,int ,int ,struct crypto_bignum*) ;
 struct crypto_bignum* crypto_bignum_init () ;
 scalar_t__ crypto_bignum_is_one (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_mulmod (struct crypto_bignum*,int ,int ,struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_to_bin (struct crypto_bignum*,int *,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int sae_derive_k_ffc(struct sae_data *sae, u8 *k)
{
 struct crypto_bignum *K;
 int ret = -1;

 K = crypto_bignum_init();
 if (K == ((void*)0))
  goto fail;
 if (crypto_bignum_exptmod(sae->tmp->pwe_ffc, sae->peer_commit_scalar,
      sae->tmp->prime, K) < 0 ||
     crypto_bignum_mulmod(K, sae->tmp->peer_commit_element_ffc,
     sae->tmp->prime, K) < 0 ||
     crypto_bignum_exptmod(K, sae->tmp->sae_rand, sae->tmp->prime, K) < 0
     ||
     crypto_bignum_is_one(K) ||
     crypto_bignum_to_bin(K, k, SAE_MAX_PRIME_LEN, sae->tmp->prime_len) <
     0) {
  wpa_printf(MSG_DEBUG, "SAE: Failed to calculate K and k");
  goto fail;
 }

 wpa_hexdump_key(MSG_DEBUG, "SAE: k", k, sae->tmp->prime_len);

 ret = 0;
fail:
 crypto_bignum_deinit(K, 1);
 return ret;
}
