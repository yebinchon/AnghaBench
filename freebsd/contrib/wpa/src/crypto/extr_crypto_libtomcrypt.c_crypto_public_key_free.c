
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_public_key {int rsa; } ;


 int os_free (struct crypto_public_key*) ;
 int rsa_free (int *) ;

void crypto_public_key_free(struct crypto_public_key *key)
{
 if (key) {
  rsa_free(&key->rsa);
  os_free(key);
 }
}
