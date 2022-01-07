
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_num_bits (int *) ;
 int BN_sub (int *,int *,int ) ;
 int BN_value_one () ;
 int EC_GROUP_get_order (int ,int *,int *) ;
 int EC_KEY_get0_group (int const*) ;
 int * EC_KEY_get0_private_key (int const*) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_KEY_INVALID_EC_VALUE ;
 int SSH_ERR_LIBCRYPTO_ERROR ;

int
sshkey_ec_validate_private(const EC_KEY *key)
{
 BN_CTX *bnctx;
 BIGNUM *order, *tmp;
 int ret = SSH_ERR_KEY_INVALID_EC_VALUE;

 if ((bnctx = BN_CTX_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 BN_CTX_start(bnctx);

 if ((order = BN_CTX_get(bnctx)) == ((void*)0) ||
     (tmp = BN_CTX_get(bnctx)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }


 if (EC_GROUP_get_order(EC_KEY_get0_group(key), order, bnctx) != 1) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (BN_num_bits(EC_KEY_get0_private_key(key)) <=
     BN_num_bits(order) / 2)
  goto out;


 if (!BN_sub(tmp, order, BN_value_one())) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (BN_cmp(EC_KEY_get0_private_key(key), tmp) >= 0)
  goto out;
 ret = 0;
 out:
 BN_CTX_free(bnctx);
 return ret;
}
