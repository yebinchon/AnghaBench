
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_6__ {int * e; int * n; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;


 int BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int RSA_free (TYPE_1__*) ;
 TYPE_1__* RSA_new () ;
 int RSA_set0_key (TYPE_1__*,int *,int *,int *) ;
 int memmove (size_t*,unsigned char const*,int) ;
 size_t ntohs (size_t) ;

RSA *
ldns_key_buf2rsa_raw(const unsigned char* key, size_t len)
{
 uint16_t offset;
 uint16_t exp;
 uint16_t int16;
 RSA *rsa;
 BIGNUM *modulus;
 BIGNUM *exponent;

 if (len == 0)
  return ((void*)0);
 if (key[0] == 0) {
  if(len < 3)
   return ((void*)0);



  memmove(&int16, key+1, 2);
  exp = ntohs(int16);
  offset = 3;
 } else {
  exp = key[0];
  offset = 1;
 }


 if(len < (size_t)offset + exp + 1)
  return ((void*)0);


 exponent = BN_new();
 if(!exponent) return ((void*)0);
 (void) BN_bin2bn(key+offset, (int)exp, exponent);
 offset += exp;


 modulus = BN_new();
 if(!modulus) {
  BN_free(exponent);
  return ((void*)0);
 }

 (void) BN_bin2bn(key+offset, (int)(len - offset), modulus);

 rsa = RSA_new();
 if(!rsa) {
  BN_free(exponent);
  BN_free(modulus);
  return ((void*)0);
 }


 rsa->n = modulus;
 rsa->e = exponent;
 return rsa;
}
