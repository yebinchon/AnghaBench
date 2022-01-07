
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIGNUM ;


 int BN_num_bits (int const*) ;
 scalar_t__ DH_generate_key (int *) ;
 int DH_get0_key (int *,int const**,int *) ;
 int DH_get0_pqg (int *,int const**,int *,int *) ;
 int DH_set_length (int *,int ) ;
 int INT_MAX ;
 int MINIMUM (int,int) ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int dh_pub_is_valid (int *,int const*) ;

int
dh_gen_key(DH *dh, int need)
{
 int pbits;
 const BIGNUM *dh_p, *pub_key;

 DH_get0_pqg(dh, &dh_p, ((void*)0), ((void*)0));

 if (need < 0 || dh_p == ((void*)0) ||
     (pbits = BN_num_bits(dh_p)) <= 0 ||
     need > INT_MAX / 2 || 2 * need > pbits)
  return SSH_ERR_INVALID_ARGUMENT;
 if (need < 256)
  need = 256;




 if (!DH_set_length(dh, MINIMUM(need * 2, pbits - 1)))
  return SSH_ERR_LIBCRYPTO_ERROR;

 if (DH_generate_key(dh) == 0)
  return SSH_ERR_LIBCRYPTO_ERROR;
 DH_get0_key(dh, &pub_key, ((void*)0));
 if (!dh_pub_is_valid(dh, pub_key))
  return SSH_ERR_INVALID_FORMAT;
 return 0;
}
