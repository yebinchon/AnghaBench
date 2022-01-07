
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int * rsa; int type; } ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_clear_free (int *) ;
 int * BN_dup (int const*) ;
 scalar_t__ BN_mod (int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_set_flags (int *,int ) ;
 scalar_t__ BN_sub (int *,int const*,int ) ;
 int BN_value_one () ;
 scalar_t__ KEY_RSA ;
 int RSA_get0_factors (int *,int const**,int const**) ;
 int RSA_get0_key (int *,int *,int *,int const**) ;
 int RSA_set0_crt_params (int *,int *,int *,int *) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 scalar_t__ sshkey_type_plain (int ) ;

int
ssh_rsa_complete_crt_parameters(struct sshkey *key, const BIGNUM *iqmp)
{
 const BIGNUM *rsa_p, *rsa_q, *rsa_d;
 BIGNUM *aux = ((void*)0), *d_consttime = ((void*)0);
 BIGNUM *rsa_dmq1 = ((void*)0), *rsa_dmp1 = ((void*)0), *rsa_iqmp = ((void*)0);
 BN_CTX *ctx = ((void*)0);
 int r;

 if (key == ((void*)0) || key->rsa == ((void*)0) ||
     sshkey_type_plain(key->type) != KEY_RSA)
  return SSH_ERR_INVALID_ARGUMENT;

 RSA_get0_key(key->rsa, ((void*)0), ((void*)0), &rsa_d);
 RSA_get0_factors(key->rsa, &rsa_p, &rsa_q);

 if ((ctx = BN_CTX_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((aux = BN_new()) == ((void*)0) ||
     (rsa_dmq1 = BN_new()) == ((void*)0) ||
     (rsa_dmp1 = BN_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((d_consttime = BN_dup(rsa_d)) == ((void*)0) ||
     (rsa_iqmp = BN_dup(iqmp)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 BN_set_flags(aux, BN_FLG_CONSTTIME);
 BN_set_flags(d_consttime, BN_FLG_CONSTTIME);

 if ((BN_sub(aux, rsa_q, BN_value_one()) == 0) ||
     (BN_mod(rsa_dmq1, d_consttime, aux, ctx) == 0) ||
     (BN_sub(aux, rsa_p, BN_value_one()) == 0) ||
     (BN_mod(rsa_dmp1, d_consttime, aux, ctx) == 0)) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (!RSA_set0_crt_params(key->rsa, rsa_dmp1, rsa_dmq1, rsa_iqmp)) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 rsa_dmp1 = rsa_dmq1 = rsa_iqmp = ((void*)0);

 r = 0;
 out:
 BN_clear_free(aux);
 BN_clear_free(d_consttime);
 BN_clear_free(rsa_dmp1);
 BN_clear_free(rsa_dmq1);
 BN_clear_free(rsa_iqmp);
 BN_CTX_free(ctx);
 return r;
}
