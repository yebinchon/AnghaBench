
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshbuf {int dummy; } ;
struct ssh {int dummy; } ;
typedef int BIGNUM ;


 int SSH_ERR_ALLOC_FAIL ;
 int kex_derive_keys (struct ssh*,int *,int ,struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_bignum2 (struct sshbuf*,int const*) ;

int
kex_derive_keys_bn(struct ssh *ssh, u_char *hash, u_int hashlen,
    const BIGNUM *secret)
{
 struct sshbuf *shared_secret;
 int r;

 if ((shared_secret = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_put_bignum2(shared_secret, secret)) == 0)
  r = kex_derive_keys(ssh, hash, hashlen, shared_secret);
 sshbuf_free(shared_secret);
 return r;
}
