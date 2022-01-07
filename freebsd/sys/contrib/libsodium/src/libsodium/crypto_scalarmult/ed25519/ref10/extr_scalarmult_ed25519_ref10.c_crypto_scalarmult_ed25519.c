
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 int _crypto_scalarmult_ed25519_clamp (unsigned char*) ;
 scalar_t__ _crypto_scalarmult_ed25519_is_inf (unsigned char*) ;
 scalar_t__ ge25519_frombytes (int *,unsigned char const*) ;
 scalar_t__ ge25519_has_small_order (unsigned char const*) ;
 scalar_t__ ge25519_is_canonical (unsigned char const*) ;
 scalar_t__ ge25519_is_on_main_subgroup (int *) ;
 int ge25519_p3_tobytes (unsigned char*,int *) ;
 int ge25519_scalarmult (int *,unsigned char*,int *) ;
 scalar_t__ sodium_is_zero (unsigned char const*,int) ;

int
crypto_scalarmult_ed25519(unsigned char *q, const unsigned char *n,
                          const unsigned char *p)
{
    unsigned char *t = q;
    ge25519_p3 Q;
    ge25519_p3 P;
    unsigned int i;

    if (ge25519_is_canonical(p) == 0 || ge25519_has_small_order(p) != 0 ||
        ge25519_frombytes(&P, p) != 0 || ge25519_is_on_main_subgroup(&P) == 0) {
        return -1;
    }
    for (i = 0; i < 32; ++i) {
        t[i] = n[i];
    }
    _crypto_scalarmult_ed25519_clamp(t);
    ge25519_scalarmult(&Q, t, &P);
    ge25519_p3_tobytes(q, &Q);
    if (_crypto_scalarmult_ed25519_is_inf(q) != 0 || sodium_is_zero(n, 32)) {
        return -1;
    }
    return 0;
}
