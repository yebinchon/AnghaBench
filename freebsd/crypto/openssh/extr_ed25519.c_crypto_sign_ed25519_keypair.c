
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc25519 ;
typedef int ge25519 ;


 int crypto_hash_sha512 (unsigned char*,unsigned char*,int) ;
 int ge25519_pack (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,int *) ;
 int randombytes (unsigned char*,int) ;
 int sc25519_from32bytes (int *,unsigned char*) ;

int crypto_sign_ed25519_keypair(
    unsigned char *pk,
    unsigned char *sk
    )
{
  sc25519 scsk;
  ge25519 gepk;
  unsigned char extsk[64];
  int i;

  randombytes(sk, 32);
  crypto_hash_sha512(extsk, sk, 32);
  extsk[0] &= 248;
  extsk[31] &= 127;
  extsk[31] |= 64;

  sc25519_from32bytes(&scsk,extsk);

  ge25519_scalarmult_base(&gepk, &scsk);
  ge25519_pack(pk, &gepk);
  for(i=0;i<32;i++)
    sk[32 + i] = pk[i];
  return 0;
}
