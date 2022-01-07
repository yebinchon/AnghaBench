
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


 int BN_clear_free (int *) ;
 int * BN_new () ;
 int ECDSA_SIG_free (int *) ;
 int * ECDSA_SIG_new () ;
 int ECDSA_SIG_set0 (int *,int *,int *) ;
 int ECDSA_do_verify (int *,size_t,int *,int *) ;
 scalar_t__ KEY_ECDSA ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_TYPE_MISMATCH ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int SSH_ERR_SIGNATURE_INVALID ;
 int SSH_ERR_UNEXPECTED_TRAILING_DATA ;
 int explicit_bzero (int *,int) ;
 int free (char*) ;
 size_t ssh_digest_bytes (int) ;
 int ssh_digest_memory (int,int const*,size_t,int *,int) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_from (int const*,size_t) ;
 scalar_t__ sshbuf_froms (struct sshbuf*,struct sshbuf**) ;
 scalar_t__ sshbuf_get_bignum2 (struct sshbuf*,int *) ;
 scalar_t__ sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 int sshkey_ec_nid_to_hash_alg (int ) ;
 int sshkey_ssh_name_plain (struct sshkey const*) ;
 scalar_t__ sshkey_type_plain (int ) ;
 scalar_t__ strcmp (int ,char*) ;

int
ssh_ecdsa_verify(const struct sshkey *key,
    const u_char *signature, size_t signaturelen,
    const u_char *data, size_t datalen, u_int compat)
{
 ECDSA_SIG *sig = ((void*)0);
 BIGNUM *sig_r = ((void*)0), *sig_s = ((void*)0);
 int hash_alg;
 u_char digest[SSH_DIGEST_MAX_LENGTH];
 size_t dlen;
 int ret = SSH_ERR_INTERNAL_ERROR;
 struct sshbuf *b = ((void*)0), *sigbuf = ((void*)0);
 char *ktype = ((void*)0);

 if (key == ((void*)0) || key->ecdsa == ((void*)0) ||
     sshkey_type_plain(key->type) != KEY_ECDSA ||
     signature == ((void*)0) || signaturelen == 0)
  return SSH_ERR_INVALID_ARGUMENT;

 if ((hash_alg = sshkey_ec_nid_to_hash_alg(key->ecdsa_nid)) == -1 ||
     (dlen = ssh_digest_bytes(hash_alg)) == 0)
  return SSH_ERR_INTERNAL_ERROR;


 if ((b = sshbuf_from(signature, signaturelen)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if (sshbuf_get_cstring(b, &ktype, ((void*)0)) != 0 ||
     sshbuf_froms(b, &sigbuf) != 0) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 if (strcmp(sshkey_ssh_name_plain(key), ktype) != 0) {
  ret = SSH_ERR_KEY_TYPE_MISMATCH;
  goto out;
 }
 if (sshbuf_len(b) != 0) {
  ret = SSH_ERR_UNEXPECTED_TRAILING_DATA;
  goto out;
 }


 if ((sig = ECDSA_SIG_new()) == ((void*)0) ||
     (sig_r = BN_new()) == ((void*)0) ||
     (sig_s = BN_new()) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (sshbuf_get_bignum2(sigbuf, sig_r) != 0 ||
     sshbuf_get_bignum2(sigbuf, sig_s) != 0) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 if (!ECDSA_SIG_set0(sig, sig_r, sig_s)) {
  ret = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 sig_r = sig_s = ((void*)0);

 if (sshbuf_len(sigbuf) != 0) {
  ret = SSH_ERR_UNEXPECTED_TRAILING_DATA;
  goto out;
 }
 if ((ret = ssh_digest_memory(hash_alg, data, datalen,
     digest, sizeof(digest))) != 0)
  goto out;

 switch (ECDSA_do_verify(digest, dlen, sig, key->ecdsa)) {
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
 sshbuf_free(sigbuf);
 sshbuf_free(b);
 ECDSA_SIG_free(sig);
 BN_clear_free(sig_r);
 BN_clear_free(sig_s);
 free(ktype);
 return ret;
}
