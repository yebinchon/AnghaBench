
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct crypto_ec_point {int dummy; } ;
struct crypto_bignum {int dummy; } ;
struct TYPE_2__ {int prime_len; int ec; } ;


 int SAE_MAX_ECC_PRIME_LEN ;
 int crypto_ec_point_to_bin (int ,struct crypto_ec_point const*,int *,int *) ;
 int sae_cn_confirm (struct sae_data*,int const*,struct crypto_bignum const*,int *,int,struct crypto_bignum const*,int *,int,int *) ;

__attribute__((used)) static void sae_cn_confirm_ecc(struct sae_data *sae, const u8 *sc,
          const struct crypto_bignum *scalar1,
          const struct crypto_ec_point *element1,
          const struct crypto_bignum *scalar2,
          const struct crypto_ec_point *element2,
          u8 *confirm)
{
 u8 element_b1[2 * SAE_MAX_ECC_PRIME_LEN];
 u8 element_b2[2 * SAE_MAX_ECC_PRIME_LEN];

 crypto_ec_point_to_bin(sae->tmp->ec, element1, element_b1,
          element_b1 + sae->tmp->prime_len);
 crypto_ec_point_to_bin(sae->tmp->ec, element2, element_b2,
          element_b2 + sae->tmp->prime_len);

 sae_cn_confirm(sae, sc, scalar1, element_b1, 2 * sae->tmp->prime_len,
         scalar2, element_b2, 2 * sae->tmp->prime_len, confirm);
}
