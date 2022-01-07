
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_bin2bn (int const*,size_t,int *) ;
 size_t BN_bn2bin (int *,int *) ;
 int BN_clear_free (int *) ;
 int BN_mod_exp_mont_consttime (int *,int *,int *,int *,int *,int *) ;
 int * BN_new () ;

int crypto_mod_exp(const u8 *base, size_t base_len,
     const u8 *power, size_t power_len,
     const u8 *modulus, size_t modulus_len,
     u8 *result, size_t *result_len)
{
 BIGNUM *bn_base, *bn_exp, *bn_modulus, *bn_result;
 int ret = -1;
 BN_CTX *ctx;

 ctx = BN_CTX_new();
 if (ctx == ((void*)0))
  return -1;

 bn_base = BN_bin2bn(base, base_len, ((void*)0));
 bn_exp = BN_bin2bn(power, power_len, ((void*)0));
 bn_modulus = BN_bin2bn(modulus, modulus_len, ((void*)0));
 bn_result = BN_new();

 if (bn_base == ((void*)0) || bn_exp == ((void*)0) || bn_modulus == ((void*)0) ||
     bn_result == ((void*)0))
  goto error;

 if (BN_mod_exp_mont_consttime(bn_result, bn_base, bn_exp, bn_modulus,
          ctx, ((void*)0)) != 1)
  goto error;

 *result_len = BN_bn2bin(bn_result, result);
 ret = 0;

error:
 BN_clear_free(bn_base);
 BN_clear_free(bn_exp);
 BN_clear_free(bn_modulus);
 BN_clear_free(bn_result);
 BN_CTX_free(ctx);
 return ret;
}
