
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; int peer_commit_scalar; } ;
struct crypto_ec_point {int dummy; } ;
struct TYPE_2__ {int prime_len; int ec; int sae_rand; int peer_commit_element_ecc; struct crypto_ec_point* pwe_ecc; } ;


 int MSG_DEBUG ;
 scalar_t__ crypto_ec_point_add (int ,struct crypto_ec_point*,int ,struct crypto_ec_point*) ;
 int crypto_ec_point_deinit (struct crypto_ec_point*,int) ;
 struct crypto_ec_point* crypto_ec_point_init (int ) ;
 scalar_t__ crypto_ec_point_is_at_infinity (int ,struct crypto_ec_point*) ;
 scalar_t__ crypto_ec_point_mul (int ,struct crypto_ec_point*,int ,struct crypto_ec_point*) ;
 scalar_t__ crypto_ec_point_to_bin (int ,struct crypto_ec_point*,int *,int *) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int sae_derive_k_ecc(struct sae_data *sae, u8 *k)
{
 struct crypto_ec_point *K;
 int ret = -1;

 K = crypto_ec_point_init(sae->tmp->ec);
 if (K == ((void*)0))
  goto fail;
 if (crypto_ec_point_mul(sae->tmp->ec, sae->tmp->pwe_ecc,
    sae->peer_commit_scalar, K) < 0 ||
     crypto_ec_point_add(sae->tmp->ec, K,
    sae->tmp->peer_commit_element_ecc, K) < 0 ||
     crypto_ec_point_mul(sae->tmp->ec, K, sae->tmp->sae_rand, K) < 0 ||
     crypto_ec_point_is_at_infinity(sae->tmp->ec, K) ||
     crypto_ec_point_to_bin(sae->tmp->ec, K, k, ((void*)0)) < 0) {
  wpa_printf(MSG_DEBUG, "SAE: Failed to calculate K and k");
  goto fail;
 }

 wpa_hexdump_key(MSG_DEBUG, "SAE: k", k, sae->tmp->prime_len);

 ret = 0;
fail:
 crypto_ec_point_deinit(K, 1);
 return ret;
}
