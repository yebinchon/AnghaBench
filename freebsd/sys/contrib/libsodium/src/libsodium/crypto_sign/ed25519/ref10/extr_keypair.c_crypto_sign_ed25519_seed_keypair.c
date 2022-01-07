
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int crypto_hash_sha512 (unsigned char*,unsigned char const*,int) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult_base (int *,unsigned char*) ;
 int memmove (unsigned char*,unsigned char const*,int) ;

int
crypto_sign_ed25519_seed_keypair(unsigned char *pk, unsigned char *sk,
                                 const unsigned char *seed)
{
    ge25519_p3 A;




    crypto_hash_sha512(sk, seed, 32);

    sk[0] &= 248;
    sk[31] &= 127;
    sk[31] |= 64;

    ge25519_scalarmult_base(&A, sk);
    ge25519_p3_tobytes(pk, &A);

    memmove(sk, seed, 32);
    memmove(sk + 32, pk, 32);

    return 0;
}
