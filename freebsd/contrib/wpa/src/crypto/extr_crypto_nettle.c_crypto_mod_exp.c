
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int mpz_t ;


 int mpz_clears (int ,int ,int ,int ,int *) ;
 int mpz_export (int *,size_t*,int,int,int,int ,int ) ;
 int mpz_import (int ,size_t,int,int,int,int ,int const*) ;
 int mpz_inits (int ,int ,int ,int ,int *) ;
 int mpz_powm (int ,int ,int ,int ) ;
 size_t mpz_sizeinbase (int ,int) ;

int crypto_mod_exp(const u8 *base, size_t base_len,
     const u8 *power, size_t power_len,
     const u8 *modulus, size_t modulus_len,
     u8 *result, size_t *result_len)
{
 mpz_t bn_base, bn_exp, bn_modulus, bn_result;
 int ret = -1;
 size_t len;

 mpz_inits(bn_base, bn_exp, bn_modulus, bn_result, ((void*)0));
 mpz_import(bn_base, base_len, 1, 1, 1, 0, base);
 mpz_import(bn_exp, power_len, 1, 1, 1, 0, power);
 mpz_import(bn_modulus, modulus_len, 1, 1, 1, 0, modulus);

 mpz_powm(bn_result, bn_base, bn_exp, bn_modulus);
 len = mpz_sizeinbase(bn_result, 2);
 len = (len + 7) / 8;
 if (*result_len < len)
  goto error;
 mpz_export(result, result_len, 1, 1, 1, 0, bn_result);
 ret = 0;

error:
 mpz_clears(bn_base, bn_exp, bn_modulus, bn_result, ((void*)0));
 return ret;
}
