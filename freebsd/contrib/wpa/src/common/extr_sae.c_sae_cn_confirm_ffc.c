
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct crypto_bignum {int dummy; } ;
typedef int element_b2 ;
typedef int element_b1 ;
struct TYPE_2__ {int prime_len; } ;


 int SAE_MAX_PRIME_LEN ;
 int crypto_bignum_to_bin (struct crypto_bignum const*,int *,int,int ) ;
 int sae_cn_confirm (struct sae_data*,int const*,struct crypto_bignum const*,int *,int ,struct crypto_bignum const*,int *,int ,int *) ;

__attribute__((used)) static void sae_cn_confirm_ffc(struct sae_data *sae, const u8 *sc,
          const struct crypto_bignum *scalar1,
          const struct crypto_bignum *element1,
          const struct crypto_bignum *scalar2,
          const struct crypto_bignum *element2,
          u8 *confirm)
{
 u8 element_b1[SAE_MAX_PRIME_LEN];
 u8 element_b2[SAE_MAX_PRIME_LEN];

 crypto_bignum_to_bin(element1, element_b1, sizeof(element_b1),
        sae->tmp->prime_len);
 crypto_bignum_to_bin(element2, element_b2, sizeof(element_b2),
        sae->tmp->prime_len);

 sae_cn_confirm(sae, sc, scalar1, element_b1, sae->tmp->prime_len,
         scalar2, element_b2, sae->tmp->prime_len, confirm);
}
