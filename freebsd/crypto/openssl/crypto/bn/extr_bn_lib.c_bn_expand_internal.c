
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BITS2 ;
 int BN_FLG_SECURE ;
 int BN_FLG_STATIC_DATA ;
 int BN_F_BN_EXPAND_INTERNAL ;
 int BN_R_BIGNUM_TOO_LONG ;
 int BN_R_EXPAND_ON_STATIC_BIGNUM_DATA ;
 scalar_t__ BN_get_flags (TYPE_1__ const*,int ) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int INT_MAX ;
 int * OPENSSL_secure_zalloc (int) ;
 int * OPENSSL_zalloc (int) ;
 int assert (int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static BN_ULONG *bn_expand_internal(const BIGNUM *b, int words)
{
    BN_ULONG *a = ((void*)0);

    if (words > (INT_MAX / (4 * BN_BITS2))) {
        BNerr(BN_F_BN_EXPAND_INTERNAL, BN_R_BIGNUM_TOO_LONG);
        return ((void*)0);
    }
    if (BN_get_flags(b, BN_FLG_STATIC_DATA)) {
        BNerr(BN_F_BN_EXPAND_INTERNAL, BN_R_EXPAND_ON_STATIC_BIGNUM_DATA);
        return ((void*)0);
    }
    if (BN_get_flags(b, BN_FLG_SECURE))
        a = OPENSSL_secure_zalloc(words * sizeof(*a));
    else
        a = OPENSSL_zalloc(words * sizeof(*a));
    if (a == ((void*)0)) {
        BNerr(BN_F_BN_EXPAND_INTERNAL, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    assert(b->top <= words);
    if (b->top > 0)
        memcpy(a, b->d, sizeof(*a) * b->top);

    return a;
}
