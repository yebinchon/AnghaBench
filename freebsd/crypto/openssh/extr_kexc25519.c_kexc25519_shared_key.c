
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int CURVE25519_SIZE ;
 int SSH_ERR_KEY_INVALID_EC_VALUE ;
 int crypto_scalarmult_curve25519 (int *,int const*,int const*) ;
 int dump_digest (char*,int *,int) ;
 int explicit_bzero (int *,int) ;
 int sshbuf_put_bignum2_bytes (struct sshbuf*,int *,int) ;
 int sshbuf_reset (struct sshbuf*) ;
 scalar_t__ timingsafe_bcmp (int const*,int *,int) ;

int
kexc25519_shared_key(const u_char key[CURVE25519_SIZE],
    const u_char pub[CURVE25519_SIZE], struct sshbuf *out)
{
 u_char shared_key[CURVE25519_SIZE];
 int r;


 explicit_bzero(shared_key, CURVE25519_SIZE);
 if (timingsafe_bcmp(pub, shared_key, CURVE25519_SIZE) == 0)
  return SSH_ERR_KEY_INVALID_EC_VALUE;

 crypto_scalarmult_curve25519(shared_key, key, pub);



 sshbuf_reset(out);
 r = sshbuf_put_bignum2_bytes(out, shared_key, CURVE25519_SIZE);
 explicit_bzero(shared_key, CURVE25519_SIZE);
 return r;
}
