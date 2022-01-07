
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc25519 ;
typedef int ge25519 ;


 int crypto_hash_sha512 (unsigned char*,unsigned char const*,unsigned long long) ;
 int crypto_hash_sha512_BYTES ;
 int ge25519_pack (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,int *) ;
 int get_hram (unsigned char*,unsigned char*,unsigned char const*,unsigned char*,unsigned long long) ;
 int sc25519_add (int *,int *,int *) ;
 int sc25519_from32bytes (int *,unsigned char*) ;
 int sc25519_from64bytes (int *,unsigned char*) ;
 int sc25519_mul (int *,int *,int *) ;
 int sc25519_to32bytes (unsigned char*,int *) ;

int crypto_sign_ed25519(
    unsigned char *sm,unsigned long long *smlen,
    const unsigned char *m,unsigned long long mlen,
    const unsigned char *sk
    )
{
  sc25519 sck, scs, scsk;
  ge25519 ger;
  unsigned char r[32];
  unsigned char s[32];
  unsigned char extsk[64];
  unsigned long long i;
  unsigned char hmg[crypto_hash_sha512_BYTES];
  unsigned char hram[crypto_hash_sha512_BYTES];

  crypto_hash_sha512(extsk, sk, 32);
  extsk[0] &= 248;
  extsk[31] &= 127;
  extsk[31] |= 64;

  *smlen = mlen+64;
  for(i=0;i<mlen;i++)
    sm[64 + i] = m[i];
  for(i=0;i<32;i++)
    sm[32 + i] = extsk[32+i];

  crypto_hash_sha512(hmg, sm+32, mlen+32);


  sc25519_from64bytes(&sck, hmg);
  ge25519_scalarmult_base(&ger, &sck);
  ge25519_pack(r, &ger);


  for(i=0;i<32;i++)
    sm[i] = r[i];

  get_hram(hram, sm, sk+32, sm, mlen+64);

  sc25519_from64bytes(&scs, hram);
  sc25519_from32bytes(&scsk, extsk);
  sc25519_mul(&scs, &scs, &scsk);

  sc25519_add(&scs, &scs, &sck);

  sc25519_to32bytes(s,&scs);
  for(i=0;i<32;i++)
    sm[32 + i] = s[i];

  return 0;
}
