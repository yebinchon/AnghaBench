
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ge25519_p3 ;


 scalar_t__ ge25519_frombytes (int *,unsigned char const*) ;
 scalar_t__ ge25519_has_small_order (unsigned char const*) ;
 scalar_t__ ge25519_is_canonical (unsigned char const*) ;
 scalar_t__ ge25519_is_on_curve (int *) ;
 scalar_t__ ge25519_is_on_main_subgroup (int *) ;

int
crypto_core_ed25519_is_valid_point(const unsigned char *p)
{
    ge25519_p3 p_p3;

    if (ge25519_is_canonical(p) == 0 ||
        ge25519_has_small_order(p) != 0 ||
        ge25519_frombytes(&p_p3, p) != 0 ||
        ge25519_is_on_curve(&p_p3) == 0 ||
        ge25519_is_on_main_subgroup(&p_p3) == 0) {
        return 0;
    }
    return 1;
}
