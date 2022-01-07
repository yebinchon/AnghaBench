
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ntop ;
typedef int i ;
struct TYPE_14__ {size_t dmax; size_t top; size_t* d; size_t flags; } ;
struct TYPE_13__ {int mod; int * m_ctx; TYPE_2__* Ai; } ;
typedef size_t BN_ULONG ;
typedef int BN_CTX ;
typedef TYPE_1__ BN_BLINDING ;
typedef TYPE_2__ BIGNUM ;


 size_t BN_FLG_FIXED_TOP ;
 int BN_F_BN_BLINDING_INVERT_EX ;
 int BN_R_NOT_INITIALIZED ;
 int BN_mod_mul (TYPE_2__*,TYPE_2__*,TYPE_2__ const*,int ,int *) ;
 int BN_mod_mul_montgomery (TYPE_2__*,TYPE_2__*,TYPE_2__ const*,int *,int *) ;
 int BNerr (int ,int ) ;
 int bn_check_top (TYPE_2__*) ;

int BN_BLINDING_invert_ex(BIGNUM *n, const BIGNUM *r, BN_BLINDING *b,
                          BN_CTX *ctx)
{
    int ret;

    bn_check_top(n);

    if (r == ((void*)0) && (r = b->Ai) == ((void*)0)) {
        BNerr(BN_F_BN_BLINDING_INVERT_EX, BN_R_NOT_INITIALIZED);
        return 0;
    }

    if (b->m_ctx != ((void*)0)) {

        if (n->dmax >= r->top) {
            size_t i, rtop = r->top, ntop = n->top;
            BN_ULONG mask;

            for (i = 0; i < rtop; i++) {
                mask = (BN_ULONG)0 - ((i - ntop) >> (8 * sizeof(i) - 1));
                n->d[i] &= mask;
            }
            mask = (BN_ULONG)0 - ((rtop - ntop) >> (8 * sizeof(ntop) - 1));

            n->top = (int)(rtop & ~mask) | (ntop & mask);
            n->flags |= (BN_FLG_FIXED_TOP & ~mask);
        }
        ret = BN_mod_mul_montgomery(n, n, r, b->m_ctx, ctx);
    } else {
        ret = BN_mod_mul(n, n, r, b->mod, ctx);
    }

    bn_check_top(n);
    return ret;
}
