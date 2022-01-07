
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int * ecdsa; int ecdsa_nid; int type; } ;
struct sshbuf {int dummy; } ;
typedef int digest ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int ECDSA_SIG_free (int *) ;
 int ECDSA_SIG_get0 (int *,int const**,int const**) ;
 int * ECDSA_do_sign (int *,size_t,int *) ;
 scalar_t__ KEY_ECDSA ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int explicit_bzero (int *,int) ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;
 size_t ssh_digest_bytes (int) ;
 int ssh_digest_memory (int,int const*,size_t,int *,int) ;
 int sshbuf_free (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put_bignum2 (struct sshbuf*,int const*) ;
 int sshbuf_put_cstring (struct sshbuf*,int ) ;
 int sshbuf_put_stringb (struct sshbuf*,struct sshbuf*) ;
 int sshkey_ec_nid_to_hash_alg (int ) ;
 int sshkey_ssh_name_plain (struct sshkey const*) ;
 scalar_t__ sshkey_type_plain (int ) ;

int
ssh_ecdsa_sign(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, u_int compat)
{
 ECDSA_SIG *sig = ((void*)0);
 const BIGNUM *sig_r, *sig_s;
 int hash_alg;
 u_char digest[SSH_DIGEST_MAX_LENGTH];
 size_t len, dlen;
 struct sshbuf *b = ((void*)0), *bb = ((void*)0);
 int ret = SSH_ERR_INTERNAL_ERROR;

 if (lenp != ((void*)0))
  *lenp = 0;
 if (sigp != ((void*)0))
  *sigp = ((void*)0);

 if (key == ((void*)0) || key->ecdsa == ((void*)0) ||
     sshkey_type_plain(key->type) != KEY_ECDSA)
  return SSH_ERR_INVALID_ARGUMENT;

 if ((hash_alg = sshkey_ec_nid_to_hash_alg(key->ecdsa_nid)) == -1 ||
     (dlen = ssh_digest_bytes(hash_alg)) == 0)
  return SSH_ERR_INTERNAL_ERROR;
 if ((ret = ssh_digest_memory(hash_alg, data, datalen,
     digest, sizeof(digest))) != 0)
  goto out;

 if ((sig = ECDSA_do_sign(digest, dlen, key->ecdsa)) == ((void*)0)) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }

 if ((bb = sshbuf_new()) == ((void*)0) || (b = sshbuf_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 ECDSA_SIG_get0(sig, &sig_r, &sig_s);
 if ((ret = sshbuf_put_bignum2(bb, sig_r)) != 0 ||
     (ret = sshbuf_put_bignum2(bb, sig_s)) != 0)
  goto out;
 if ((ret = sshbuf_put_cstring(b, sshkey_ssh_name_plain(key))) != 0 ||
     (ret = sshbuf_put_stringb(b, bb)) != 0)
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
 sshbuf_free(b);
 sshbuf_free(bb);
 ECDSA_SIG_free(sig);
 return ret;
}
