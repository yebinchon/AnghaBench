
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;
struct sshkey {int * rsa; int type; } ;
struct sshbuf {int dummy; } ;
typedef int digest ;
typedef int BIGNUM ;


 scalar_t__ BN_num_bits (int const*) ;
 scalar_t__ KEY_RSA ;
 int RSA_get0_key (int *,int const**,int *,int *) ;
 int RSA_sign (int,int *,size_t,int *,size_t*,int *) ;
 size_t RSA_size (int *) ;
 size_t SSHBUF_MAX_BIGNUM ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_DIGEST_SHA1 ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_LENGTH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 scalar_t__ SSH_RSA_MINIMUM_MODULUS_SIZE ;
 int explicit_bzero (int *,int) ;
 int freezero (int *,size_t) ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;
 int memmove (int *,int *,size_t) ;
 int rsa_hash_alg_ident (int) ;
 int rsa_hash_alg_nid (int) ;
 int rsa_hash_id_from_keyname (char const*) ;
 size_t ssh_digest_bytes (int) ;
 int ssh_digest_memory (int,int const*,size_t,int *,int) ;
 int sshbuf_free (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put_cstring (struct sshbuf*,int ) ;
 int sshbuf_put_string (struct sshbuf*,int *,size_t) ;
 scalar_t__ sshkey_type_plain (int ) ;
 scalar_t__ strlen (char const*) ;

int
ssh_rsa_sign(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, const char *alg_ident)
{
 const BIGNUM *rsa_n;
 u_char digest[SSH_DIGEST_MAX_LENGTH], *sig = ((void*)0);
 size_t slen = 0;
 u_int dlen, len;
 int nid, hash_alg, ret = SSH_ERR_INTERNAL_ERROR;
 struct sshbuf *b = ((void*)0);

 if (lenp != ((void*)0))
  *lenp = 0;
 if (sigp != ((void*)0))
  *sigp = ((void*)0);

 if (alg_ident == ((void*)0) || strlen(alg_ident) == 0)
  hash_alg = SSH_DIGEST_SHA1;
 else
  hash_alg = rsa_hash_id_from_keyname(alg_ident);
 if (key == ((void*)0) || key->rsa == ((void*)0) || hash_alg == -1 ||
     sshkey_type_plain(key->type) != KEY_RSA)
  return SSH_ERR_INVALID_ARGUMENT;
 RSA_get0_key(key->rsa, &rsa_n, ((void*)0), ((void*)0));
 if (BN_num_bits(rsa_n) < SSH_RSA_MINIMUM_MODULUS_SIZE)
  return SSH_ERR_KEY_LENGTH;
 slen = RSA_size(key->rsa);
 if (slen <= 0 || slen > SSHBUF_MAX_BIGNUM)
  return SSH_ERR_INVALID_ARGUMENT;


 nid = rsa_hash_alg_nid(hash_alg);
 if ((dlen = ssh_digest_bytes(hash_alg)) == 0)
  return SSH_ERR_INTERNAL_ERROR;
 if ((ret = ssh_digest_memory(hash_alg, data, datalen,
     digest, sizeof(digest))) != 0)
  goto out;

 if ((sig = malloc(slen)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }

 if (RSA_sign(nid, digest, dlen, sig, &len, key->rsa) != 1) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (len < slen) {
  size_t diff = slen - len;
  memmove(sig + diff, sig, len);
  explicit_bzero(sig, diff);
 } else if (len > slen) {
  ret = SSH_ERR_INTERNAL_ERROR;
  goto out;
 }

 if ((b = sshbuf_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((ret = sshbuf_put_cstring(b, rsa_hash_alg_ident(hash_alg))) != 0 ||
     (ret = sshbuf_put_string(b, sig, slen)) != 0)
  goto out;
 len = sshbuf_len(b);
 if (sigp != ((void*)0)) {
  if ((*sigp = malloc(len)) == ((void*)0)) {
   ret = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  memcpy(*sigp, sshbuf_ptr(b), len);
 }
 if (lenp != ((void*)0))
  *lenp = len;
 ret = 0;
 out:
 explicit_bzero(digest, sizeof(digest));
 freezero(sig, slen);
 sshbuf_free(b);
 return ret;
}
