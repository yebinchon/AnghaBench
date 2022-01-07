
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int EC_KEY_set_asn1_flag (int *,int ) ;
 int OPENSSL_EC_NAMED_CURVE ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_LENGTH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int sshkey_ecdsa_bits_to_nid (int ) ;

__attribute__((used)) static int
ecdsa_generate_private_key(u_int bits, int *nid, EC_KEY **ecdsap)
{
 EC_KEY *private;
 int ret = SSH_ERR_INTERNAL_ERROR;

 if (nid == ((void*)0) || ecdsap == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 if ((*nid = sshkey_ecdsa_bits_to_nid(bits)) == -1)
  return SSH_ERR_KEY_LENGTH;
 *ecdsap = ((void*)0);
 if ((private = EC_KEY_new_by_curve_name(*nid)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (EC_KEY_generate_key(private) != 1) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 EC_KEY_set_asn1_flag(private, OPENSSL_EC_NAMED_CURVE);
 *ecdsap = private;
 private = ((void*)0);
 ret = 0;
 out:
 EC_KEY_free(private);
 return ret;
}
