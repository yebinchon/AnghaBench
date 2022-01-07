
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const EC_POINT ;
typedef int EC_GROUP ;
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
 int EC_GROUP_get_order (int const*,int *,int *) ;
 int EC_GROUP_method_of (int const*) ;
 scalar_t__ EC_METHOD_get_field_type (int ) ;
 int EC_POINT_free (int const*) ;
 int EC_POINT_get_affine_coordinates_GFp (int const*,int const*,int *,int *,int *) ;
 int EC_POINT_is_at_infinity (int const*,int const*) ;
 int EC_POINT_mul (int const*,int const*,int *,int const*,int *,int *) ;
 int const* EC_POINT_new (int const*) ;
 scalar_t__ NID_X9_62_prime_field ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_KEY_INVALID_EC_VALUE ;
 int SSH_ERR_LIBCRYPTO_ERROR ;

int
sshkey_ec_validate_public(const EC_GROUP *group, const EC_POINT *public)
{
 BN_CTX *bnctx;
 EC_POINT *nq = ((void*)0);
 BIGNUM *order, *x, *y, *tmp;
 int ret = SSH_ERR_KEY_INVALID_EC_VALUE;
 if ((bnctx = BN_CTX_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 BN_CTX_start(bnctx);





 if (EC_METHOD_get_field_type(EC_GROUP_method_of(group)) !=
     NID_X9_62_prime_field)
  goto out;


 if (EC_POINT_is_at_infinity(group, public))
  goto out;

 if ((x = BN_CTX_get(bnctx)) == ((void*)0) ||
     (y = BN_CTX_get(bnctx)) == ((void*)0) ||
     (order = BN_CTX_get(bnctx)) == ((void*)0) ||
     (tmp = BN_CTX_get(bnctx)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }


 if (EC_GROUP_get_order(group, order, bnctx) != 1 ||
     EC_POINT_get_affine_coordinates_GFp(group, public,
     x, y, bnctx) != 1) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (BN_num_bits(x) <= BN_num_bits(order) / 2 ||
     BN_num_bits(y) <= BN_num_bits(order) / 2)
  goto out;


 if ((nq = EC_POINT_new(group)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (EC_POINT_mul(group, nq, ((void*)0), public, order, bnctx) != 1) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (EC_POINT_is_at_infinity(group, nq) != 1)
  goto out;


 if (!BN_sub(tmp, order, BN_value_one())) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (BN_cmp(x, tmp) >= 0 || BN_cmp(y, tmp) >= 0)
  goto out;
 ret = 0;
 out:
 BN_CTX_free(bnctx);
 EC_POINT_free(nq);
 return ret;
}
