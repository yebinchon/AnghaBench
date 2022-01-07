
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc25519 ;
typedef int ge25519 ;


 int crypto_hash_sha512_BYTES ;
 int crypto_verify_32 (unsigned char const*,unsigned char*) ;
 int ge25519_base ;
 int ge25519_double_scalarmult_vartime (int *,int *,int *,int *,int *) ;
 int ge25519_pack (unsigned char*,int *) ;
 scalar_t__ ge25519_unpackneg_vartime (int *,unsigned char const*) ;
 int get_hram (unsigned char*,unsigned char const*,unsigned char const*,unsigned char*,unsigned long long) ;
 int sc25519_from32bytes (int *,unsigned char const*) ;
 int sc25519_from64bytes (int *,unsigned char*) ;

int crypto_sign_ed25519_open(
    unsigned char *m,unsigned long long *mlen,
    const unsigned char *sm,unsigned long long smlen,
    const unsigned char *pk
    )
{
  unsigned int i;
  int ret;
  unsigned char t2[32];
  ge25519 get1, get2;
  sc25519 schram, scs;
  unsigned char hram[crypto_hash_sha512_BYTES];

  *mlen = (unsigned long long) -1;
  if (smlen < 64) return -1;

  if (ge25519_unpackneg_vartime(&get1, pk)) return -1;

  get_hram(hram,sm,pk,m,smlen);

  sc25519_from64bytes(&schram, hram);

  sc25519_from32bytes(&scs, sm+32);

  ge25519_double_scalarmult_vartime(&get2, &get1, &schram, &ge25519_base, &scs);
  ge25519_pack(t2, &get2);

  ret = crypto_verify_32(sm, t2);

  if (!ret)
  {
    for(i=0;i<smlen-64;i++)
      m[i] = sm[i + 64];
    *mlen = smlen-64;
  }
  else
  {
    for(i=0;i<smlen-64;i++)
      m[i] = 0;
  }
  return ret;
}
