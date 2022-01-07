
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rsa_key {int dummy; } ;
struct crypto_public_key {int dummy; } ;


 int crypto_rsa_free (struct crypto_rsa_key*) ;

void crypto_public_key_free(struct crypto_public_key *key)
{
 crypto_rsa_free((struct crypto_rsa_key *) key);
}
