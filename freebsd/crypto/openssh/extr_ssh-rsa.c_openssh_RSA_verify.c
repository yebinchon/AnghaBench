
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u_char ;
typedef int RSA ;


 int RSA_PKCS1_PADDING ;
 int RSA_public_decrypt (size_t,int const*,int const*,int *,int ) ;
 size_t RSA_size (int *) ;
 size_t SSHBUF_MAX_BIGNUM ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int freezero (int const*,size_t) ;
 int const* malloc (size_t) ;
 int rsa_hash_alg_oid (int,int const**,size_t*) ;
 size_t ssh_digest_bytes (int) ;
 scalar_t__ timingsafe_bcmp (int const*,int const*,size_t) ;

__attribute__((used)) static int
openssh_RSA_verify(int hash_alg, u_char *hash, size_t hashlen,
    u_char *sigbuf, size_t siglen, RSA *rsa)
{
 size_t rsasize = 0, oidlen = 0, hlen = 0;
 int ret, len, oidmatch, hashmatch;
 const u_char *oid = ((void*)0);
 u_char *decrypted = ((void*)0);

 if ((ret = rsa_hash_alg_oid(hash_alg, &oid, &oidlen)) != 0)
  return ret;
 ret = SSH_ERR_INTERNAL_ERROR;
 hlen = ssh_digest_bytes(hash_alg);
 if (hashlen != hlen) {
  ret = SSH_ERR_INVALID_ARGUMENT;
  goto done;
 }
 rsasize = RSA_size(rsa);
 if (rsasize <= 0 || rsasize > SSHBUF_MAX_BIGNUM ||
     siglen == 0 || siglen > rsasize) {
  ret = SSH_ERR_INVALID_ARGUMENT;
  goto done;
 }
 if ((decrypted = malloc(rsasize)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto done;
 }
 if ((len = RSA_public_decrypt(siglen, sigbuf, decrypted, rsa,
     RSA_PKCS1_PADDING)) < 0) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto done;
 }
 if (len < 0 || (size_t)len != hlen + oidlen) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto done;
 }
 oidmatch = timingsafe_bcmp(decrypted, oid, oidlen) == 0;
 hashmatch = timingsafe_bcmp(decrypted + oidlen, hash, hlen) == 0;
 if (!oidmatch || !hashmatch) {
  ret = SSH_ERR_SIGNATURE_INVALID;
  goto done;
 }
 ret = 0;
done:
 freezero(decrypted, rsasize);
 return ret;
}
