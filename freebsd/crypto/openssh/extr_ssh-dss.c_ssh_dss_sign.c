
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int * dsa; int type; } ;
struct sshbuf {int dummy; } ;
typedef int digest ;
typedef int DSA_SIG ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,int *) ;
 size_t BN_num_bytes (int const*) ;
 int DSA_SIG_free (int *) ;
 int DSA_SIG_get0 (int *,int const**,int const**) ;
 int * DSA_do_sign (int *,size_t,int *) ;
 size_t INTBLOB_LEN ;
 scalar_t__ KEY_DSA ;
 int SIGBLOB_LEN ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_DIGEST_SHA1 ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int explicit_bzero (int *,int) ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;
 size_t ssh_digest_bytes (int ) ;
 int ssh_digest_memory (int ,int const*,size_t,int *,int) ;
 int sshbuf_free (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put_cstring (struct sshbuf*,char*) ;
 int sshbuf_put_string (struct sshbuf*,int *,int) ;
 scalar_t__ sshkey_type_plain (int ) ;

int
ssh_dss_sign(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, u_int compat)
{
 DSA_SIG *sig = ((void*)0);
 const BIGNUM *sig_r, *sig_s;
 u_char digest[SSH_DIGEST_MAX_LENGTH], sigblob[SIGBLOB_LEN];
 size_t rlen, slen, len, dlen = ssh_digest_bytes(SSH_DIGEST_SHA1);
 struct sshbuf *b = ((void*)0);
 int ret = SSH_ERR_INVALID_ARGUMENT;

 if (lenp != ((void*)0))
  *lenp = 0;
 if (sigp != ((void*)0))
  *sigp = ((void*)0);

 if (key == ((void*)0) || key->dsa == ((void*)0) ||
     sshkey_type_plain(key->type) != KEY_DSA)
  return SSH_ERR_INVALID_ARGUMENT;
 if (dlen == 0)
  return SSH_ERR_INTERNAL_ERROR;

 if ((ret = ssh_digest_memory(SSH_DIGEST_SHA1, data, datalen,
     digest, sizeof(digest))) != 0)
  goto out;

 if ((sig = DSA_do_sign(digest, dlen, key->dsa)) == ((void*)0)) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }

 DSA_SIG_get0(sig, &sig_r, &sig_s);
 rlen = BN_num_bytes(sig_r);
 slen = BN_num_bytes(sig_s);
 if (rlen > INTBLOB_LEN || slen > INTBLOB_LEN) {
  ret = SSH_ERR_INTERNAL_ERROR;
  goto out;
 }
 explicit_bzero(sigblob, SIGBLOB_LEN);
 BN_bn2bin(sig_r, sigblob + SIGBLOB_LEN - INTBLOB_LEN - rlen);
 BN_bn2bin(sig_s, sigblob + SIGBLOB_LEN - slen);

 if ((b = sshbuf_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((ret = sshbuf_put_cstring(b, "ssh-dss")) != 0 ||
     (ret = sshbuf_put_string(b, sigblob, SIGBLOB_LEN)) != 0)
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
 DSA_SIG_free(sig);
 sshbuf_free(b);
 return ret;
}
