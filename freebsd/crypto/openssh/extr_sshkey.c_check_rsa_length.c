
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BIGNUM ;


 scalar_t__ BN_num_bits (int const*) ;
 int RSA_get0_key (int const*,int const**,int *,int *) ;
 int SSH_ERR_KEY_LENGTH ;
 scalar_t__ SSH_RSA_MINIMUM_MODULUS_SIZE ;

__attribute__((used)) static int
check_rsa_length(const RSA *rsa)
{
 const BIGNUM *rsa_n;

 RSA_get0_key(rsa, &rsa_n, ((void*)0), ((void*)0));
 if (BN_num_bits(rsa_n) < SSH_RSA_MINIMUM_MODULUS_SIZE)
  return SSH_ERR_KEY_LENGTH;
 return 0;
}
