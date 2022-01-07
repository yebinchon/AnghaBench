
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rsa_key {int iqmp; int dmq1; int dmp1; int q; int p; int d; int e; int n; } ;


 int bignum_deinit (int ) ;
 int os_free (struct crypto_rsa_key*) ;

void crypto_rsa_free(struct crypto_rsa_key *key)
{
 if (key) {
  bignum_deinit(key->n);
  bignum_deinit(key->e);
  bignum_deinit(key->d);
  bignum_deinit(key->p);
  bignum_deinit(key->q);
  bignum_deinit(key->dmp1);
  bignum_deinit(key->dmq1);
  bignum_deinit(key->iqmp);
  os_free(key);
 }
}
