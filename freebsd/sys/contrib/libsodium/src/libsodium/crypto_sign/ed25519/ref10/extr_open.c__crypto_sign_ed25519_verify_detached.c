
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;
typedef int ge25519_p2 ;
typedef int crypto_hash_sha512_state ;


 int _crypto_sign_ed25519_ref10_hinit (int *,int) ;
 int crypto_hash_sha512_final (int *,unsigned char*) ;
 int crypto_hash_sha512_update (int *,unsigned char const*,unsigned long long) ;
 int crypto_verify_32 (unsigned char*,unsigned char const*) ;
 int ge25519_double_scalarmult_vartime (int *,unsigned char*,int *,unsigned char const*) ;
 scalar_t__ ge25519_frombytes_negate_vartime (int *,unsigned char const*) ;
 scalar_t__ ge25519_has_small_order (unsigned char const*) ;
 scalar_t__ ge25519_is_canonical (unsigned char const*) ;
 int ge25519_tobytes (unsigned char*,int *) ;
 scalar_t__ sc25519_is_canonical (unsigned char const*) ;
 int sc25519_reduce (unsigned char*) ;
 int sodium_memcmp (unsigned char const*,unsigned char*,int) ;

int
_crypto_sign_ed25519_verify_detached(const unsigned char *sig,
                                     const unsigned char *m,
                                     unsigned long long mlen,
                                     const unsigned char *pk,
                                     int prehashed)
{
    crypto_hash_sha512_state hs;
    unsigned char h[64];
    unsigned char rcheck[32];
    ge25519_p3 A;
    ge25519_p2 R;






    if (sc25519_is_canonical(sig + 32) == 0 ||
        ge25519_has_small_order(sig) != 0) {
        return -1;
    }
    if (ge25519_is_canonical(pk) == 0 ||
        ge25519_has_small_order(pk) != 0) {
        return -1;
    }

    if (ge25519_frombytes_negate_vartime(&A, pk) != 0) {
        return -1;
    }
    _crypto_sign_ed25519_ref10_hinit(&hs, prehashed);
    crypto_hash_sha512_update(&hs, sig, 32);
    crypto_hash_sha512_update(&hs, pk, 32);
    crypto_hash_sha512_update(&hs, m, mlen);
    crypto_hash_sha512_final(&hs, h);
    sc25519_reduce(h);

    ge25519_double_scalarmult_vartime(&R, h, &A, sig + 32);
    ge25519_tobytes(rcheck, &R);

    return crypto_verify_32(rcheck, sig) | (-(rcheck == sig)) |
           sodium_memcmp(sig, rcheck, 32);
}
