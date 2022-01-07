
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int BIGNUM ;


 int SSH2_MSG_KEXINIT ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int dump_digest (char*,int *,size_t) ;
 scalar_t__ ssh_digest_buffer (int,struct sshbuf*,int *,size_t) ;
 size_t ssh_digest_bytes (int) ;
 int sshbuf_dump (struct sshbuf*,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put (struct sshbuf*,int const*,size_t) ;
 int sshbuf_put_bignum2 (struct sshbuf*,int const*) ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_string (struct sshbuf*,int const*,size_t) ;
 int sshbuf_put_u32 (struct sshbuf*,size_t) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;
 int stderr ;

int
kex_dh_hash(
    int hash_alg,
    const char *client_version_string,
    const char *server_version_string,
    const u_char *ckexinit, size_t ckexinitlen,
    const u_char *skexinit, size_t skexinitlen,
    const u_char *serverhostkeyblob, size_t sbloblen,
    const BIGNUM *client_dh_pub,
    const BIGNUM *server_dh_pub,
    const BIGNUM *shared_secret,
    u_char *hash, size_t *hashlen)
{
 struct sshbuf *b;
 int r;

 if (*hashlen < ssh_digest_bytes(hash_alg))
  return SSH_ERR_INVALID_ARGUMENT;
 if ((b = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_put_cstring(b, client_version_string)) != 0 ||
     (r = sshbuf_put_cstring(b, server_version_string)) != 0 ||

     (r = sshbuf_put_u32(b, ckexinitlen+1)) != 0 ||
     (r = sshbuf_put_u8(b, SSH2_MSG_KEXINIT)) != 0 ||
     (r = sshbuf_put(b, ckexinit, ckexinitlen)) != 0 ||
     (r = sshbuf_put_u32(b, skexinitlen+1)) != 0 ||
     (r = sshbuf_put_u8(b, SSH2_MSG_KEXINIT)) != 0 ||
     (r = sshbuf_put(b, skexinit, skexinitlen)) != 0 ||
     (r = sshbuf_put_string(b, serverhostkeyblob, sbloblen)) != 0 ||
     (r = sshbuf_put_bignum2(b, client_dh_pub)) != 0 ||
     (r = sshbuf_put_bignum2(b, server_dh_pub)) != 0 ||
     (r = sshbuf_put_bignum2(b, shared_secret)) != 0) {
  sshbuf_free(b);
  return r;
 }



 if (ssh_digest_buffer(hash_alg, b, hash, *hashlen) != 0) {
  sshbuf_free(b);
  return SSH_ERR_LIBCRYPTO_ERROR;
 }
 sshbuf_free(b);
 *hashlen = ssh_digest_bytes(hash_alg);



 return 0;
}
