
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const BIGNUM ;


 int BN_FLG_SECURE ;
 int BN_copy (int const*,int const*) ;
 int BN_free (int const*) ;
 scalar_t__ BN_get_flags (int const*,int ) ;
 int const* BN_new () ;
 int const* BN_secure_new () ;
 int bn_check_top (int const*) ;

BIGNUM *BN_dup(const BIGNUM *a)
{
    BIGNUM *t;

    if (a == ((void*)0))
        return ((void*)0);
    bn_check_top(a);

    t = BN_get_flags(a, BN_FLG_SECURE) ? BN_secure_new() : BN_new();
    if (t == ((void*)0))
        return ((void*)0);
    if (!BN_copy(t, a)) {
        BN_free(t);
        return ((void*)0);
    }
    bn_check_top(t);
    return t;
}
