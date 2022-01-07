
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef char u_char ;
struct sshkey {int * dsa; int type; } ;
struct sshbuf {int dummy; } ;
typedef int digest ;
typedef int DSA_SIG ;
typedef int BIGNUM ;


 int * BN_bin2bn (char*,int,int *) ;
 int BN_clear_free (int *) ;
 int * BN_new () ;
 int DSA_SIG_free (int *) ;
 int * DSA_SIG_new () ;
 int DSA_SIG_set0 (int *,int *,int *) ;
 int DSA_do_verify (char*,size_t,int *,int *) ;
 int INTBLOB_LEN ;
 scalar_t__ KEY_DSA ;
 size_t SIGBLOB_LEN ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_DIGEST_SHA1 ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_TYPE_MISMATCH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int SSH_ERR_UNEXPECTED_TRAILING_DATA ;
 int explicit_bzero (char*,size_t) ;
 int free (char*) ;
 size_t ssh_digest_bytes (int ) ;
 int ssh_digest_memory (int ,char const*,size_t,char*,int) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_from (char const*,size_t) ;
 scalar_t__ sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 scalar_t__ sshbuf_get_string (struct sshbuf*,char**,size_t*) ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 scalar_t__ sshkey_type_plain (int ) ;
 scalar_t__ strcmp (char*,char*) ;

int
ssh_dss_verify(const struct sshkey *key,
    const u_char *signature, size_t signaturelen,
    const u_char *data, size_t datalen, u_int compat)
{
 DSA_SIG *sig = ((void*)0);
 BIGNUM *sig_r = ((void*)0), *sig_s = ((void*)0);
 u_char digest[SSH_DIGEST_MAX_LENGTH], *sigblob = ((void*)0);
 size_t len, dlen = ssh_digest_bytes(SSH_DIGEST_SHA1);
 int ret = SSH_ERR_INTERNAL_ERROR;
 struct sshbuf *b = ((void*)0);
 char *ktype = ((void*)0);

 if (key == ((void*)0) || key->dsa == ((void*)0) ||
     sshkey_type_plain(key->type) != KEY_DSA ||
     signature == ((void*)0) || signaturelen == 0)
  return SSH_ERR_INVALID_ARGUMENT;
 if (dlen == 0)
  return SSH_ERR_INTERNAL_ERROR;


 if ((b = sshbuf_from(signature, signaturelen)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if (sshbuf_get_cstring(b, &ktype, ((void*)0)) != 0 ||
     sshbuf_get_string(b, &sigblob, &len) != 0) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 if (strcmp("ssh-dss", ktype) != 0) {
  ret = SSH_ERR_KEY_TYPE_MISMATCH;
  goto out;
 }
 if (sshbuf_len(b) != 0) {
  ret = SSH_ERR_UNEXPECTED_TRAILING_DATA;
  goto out;
 }

 if (len != SIGBLOB_LEN) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto out;
 }


 if ((sig = DSA_SIG_new()) == ((void*)0) ||
     (sig_r = BN_new()) == ((void*)0) ||
     (sig_s = BN_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((BN_bin2bn(sigblob, INTBLOB_LEN, sig_r) == ((void*)0)) ||
     (BN_bin2bn(sigblob + INTBLOB_LEN, INTBLOB_LEN, sig_s) == ((void*)0))) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 if (!DSA_SIG_set0(sig, sig_r, sig_s)) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 sig_r = sig_s = ((void*)0);


 if ((ret = ssh_digest_memory(SSH_DIGEST_SHA1, data, datalen,
     digest, sizeof(digest))) != 0)
  goto out;

 switch (DSA_do_verify(digest, dlen, sig, key->dsa)) {
 case 1:
  ret = 0;
  break;
 case 0:
  ret = SSH_ERR_SIGNATURE_INVALID;
  goto out;
 default:
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }

 out:
 explicit_bzero(digest, sizeof(digest));
 DSA_SIG_free(sig);
 BN_clear_free(sig_r);
 BN_clear_free(sig_s);
 sshbuf_free(b);
 free(ktype);
 if (sigblob != ((void*)0)) {
  explicit_bzero(sigblob, len);
  free(sigblob);
 }
 return ret;
}
