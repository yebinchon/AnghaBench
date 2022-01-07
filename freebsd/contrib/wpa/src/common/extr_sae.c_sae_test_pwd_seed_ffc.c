
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_2__* tmp; } ;
struct crypto_bignum {int dummy; } ;
typedef int exp ;
struct TYPE_4__ {int prime_len; int prime; int order; TYPE_1__* dh; } ;
struct TYPE_3__ {scalar_t__ safe_prime; int prime; } ;


 int MSG_DEBUG ;
 int SAE_MAX_PRIME_LEN ;
 int SHA256_MAC_LEN ;
 int const_time_fill_msb (int) ;
 int const_time_is_zero (int) ;
 int const_time_memcmp (int*,int ,int) ;
 int const_time_select_u8 (int,int,int ) ;
 int crypto_bignum_deinit (struct crypto_bignum*,int) ;
 scalar_t__ crypto_bignum_div (struct crypto_bignum*,int ,struct crypto_bignum*) ;
 int crypto_bignum_exptmod (struct crypto_bignum*,struct crypto_bignum*,int ,struct crypto_bignum*) ;
 struct crypto_bignum* crypto_bignum_init_set (int*,int) ;
 int crypto_bignum_is_one (struct crypto_bignum*) ;
 int crypto_bignum_is_zero (struct crypto_bignum*) ;
 scalar_t__ crypto_bignum_sub (int ,struct crypto_bignum*,struct crypto_bignum*) ;
 scalar_t__ sha256_prf_bits (int const*,int,char*,int ,int,int*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,int) ;

__attribute__((used)) static int sae_test_pwd_seed_ffc(struct sae_data *sae, const u8 *pwd_seed,
     struct crypto_bignum *pwe)
{
 u8 pwd_value[SAE_MAX_PRIME_LEN];
 size_t bits = sae->tmp->prime_len * 8;
 u8 exp[1];
 struct crypto_bignum *a, *b = ((void*)0);
 int res, is_val;
 u8 pwd_value_valid;

 wpa_hexdump_key(MSG_DEBUG, "SAE: pwd-seed", pwd_seed, SHA256_MAC_LEN);


 if (sha256_prf_bits(pwd_seed, SHA256_MAC_LEN, "SAE Hunting and Pecking",
       sae->tmp->dh->prime, sae->tmp->prime_len, pwd_value,
       bits) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "SAE: pwd-value", pwd_value,
   sae->tmp->prime_len);


 res = const_time_memcmp(pwd_value, sae->tmp->dh->prime,
    sae->tmp->prime_len);



 pwd_value_valid = const_time_fill_msb(res);




 pwd_value[0] = const_time_select_u8(pwd_value_valid, pwd_value[0], 0);



 res = -1;
 a = crypto_bignum_init_set(pwd_value, sae->tmp->prime_len);
 if (!a)
  goto fail;




 if (sae->tmp->dh->safe_prime) {




  exp[0] = 2;
  b = crypto_bignum_init_set(exp, sizeof(exp));
 } else {

  exp[0] = 1;
  b = crypto_bignum_init_set(exp, sizeof(exp));
  if (b == ((void*)0) ||
      crypto_bignum_sub(sae->tmp->prime, b, b) < 0 ||
      crypto_bignum_div(b, sae->tmp->order, b) < 0)
   goto fail;
 }

 if (!b)
  goto fail;

 res = crypto_bignum_exptmod(a, b, sae->tmp->prime, pwe);
 if (res < 0)
  goto fail;
 res = const_time_select_u8(pwd_value_valid, 1, 0);
 is_val = crypto_bignum_is_zero(pwe);
 res = const_time_select_u8(const_time_is_zero(is_val), res, 0);
 is_val = crypto_bignum_is_one(pwe);
 res = const_time_select_u8(const_time_is_zero(is_val), res, 0);

fail:
 crypto_bignum_deinit(a, 1);
 crypto_bignum_deinit(b, 1);
 return res;
}
