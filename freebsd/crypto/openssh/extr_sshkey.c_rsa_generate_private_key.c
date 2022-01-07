
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int RSA ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_set_word (int *,int ) ;
 int RSA_F4 ;
 int RSA_free (int *) ;
 int RSA_generate_key_ex (int *,int,int *,int *) ;
 int * RSA_new () ;
 int SSHBUF_MAX_BIGNUM ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_LENGTH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_RSA_MINIMUM_MODULUS_SIZE ;

__attribute__((used)) static int
rsa_generate_private_key(u_int bits, RSA **rsap)
{
 RSA *private = ((void*)0);
 BIGNUM *f4 = ((void*)0);
 int ret = SSH_ERR_INTERNAL_ERROR;

 if (rsap == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 if (bits < SSH_RSA_MINIMUM_MODULUS_SIZE ||
     bits > SSHBUF_MAX_BIGNUM * 8)
  return SSH_ERR_KEY_LENGTH;
 *rsap = ((void*)0);
 if ((private = RSA_new()) == ((void*)0) || (f4 = BN_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (!BN_set_word(f4, RSA_F4) ||
     !RSA_generate_key_ex(private, bits, f4, ((void*)0))) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 *rsap = private;
 private = ((void*)0);
 ret = 0;
 out:
 RSA_free(private);
 BN_free(f4);
 return ret;
}
