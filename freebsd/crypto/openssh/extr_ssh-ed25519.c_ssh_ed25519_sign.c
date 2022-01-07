
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int * ed25519_sk; int type; } ;
struct sshbuf {int dummy; } ;


 size_t INT_MAX ;
 scalar_t__ KEY_ED25519 ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int crypto_sign_ed25519 (int *,unsigned long long*,int const*,size_t,int *) ;
 size_t crypto_sign_ed25519_BYTES ;
 int explicit_bzero (int *,size_t) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,int ,size_t) ;
 int sshbuf_free (struct sshbuf*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put_cstring (struct sshbuf*,char*) ;
 int sshbuf_put_string (struct sshbuf*,int *,unsigned long long) ;
 scalar_t__ sshkey_type_plain (int ) ;

int
ssh_ed25519_sign(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, u_int compat)
{
 u_char *sig = ((void*)0);
 size_t slen = 0, len;
 unsigned long long smlen;
 int r, ret;
 struct sshbuf *b = ((void*)0);

 if (lenp != ((void*)0))
  *lenp = 0;
 if (sigp != ((void*)0))
  *sigp = ((void*)0);

 if (key == ((void*)0) ||
     sshkey_type_plain(key->type) != KEY_ED25519 ||
     key->ed25519_sk == ((void*)0) ||
     datalen >= INT_MAX - crypto_sign_ed25519_BYTES)
  return SSH_ERR_INVALID_ARGUMENT;
 smlen = slen = datalen + crypto_sign_ed25519_BYTES;
 if ((sig = malloc(slen)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 if ((ret = crypto_sign_ed25519(sig, &smlen, data, datalen,
     key->ed25519_sk)) != 0 || smlen <= datalen) {
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }

 if ((b = sshbuf_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshbuf_put_cstring(b, "ssh-ed25519")) != 0 ||
     (r = sshbuf_put_string(b, sig, smlen - datalen)) != 0)
  goto out;
 len = sshbuf_len(b);
 if (sigp != ((void*)0)) {
  if ((*sigp = malloc(len)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  memcpy(*sigp, sshbuf_ptr(b), len);
 }
 if (lenp != ((void*)0))
  *lenp = len;

 r = 0;
 out:
 sshbuf_free(b);
 if (sig != ((void*)0)) {
  explicit_bzero(sig, slen);
  free(sig);
 }

 return r;
}
