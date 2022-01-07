
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int counter; int flags; int mod; int * A; int * Ai; int * m_ctx; int * e; } ;
typedef int BN_CTX ;
typedef TYPE_1__ BN_BLINDING ;


 int BN_BLINDING_COUNTER ;
 int BN_BLINDING_NO_RECREATE ;
 int BN_BLINDING_NO_UPDATE ;
 int BN_BLINDING_create_param (TYPE_1__*,int *,int *,int *,int *,int *) ;
 int BN_F_BN_BLINDING_UPDATE ;
 int BN_R_NOT_INITIALIZED ;
 int BN_mod_mul (int *,int *,int *,int ,int *) ;
 int BNerr (int ,int ) ;
 int bn_mul_mont_fixed_top (int *,int *,int *,int *,int *) ;

int BN_BLINDING_update(BN_BLINDING *b, BN_CTX *ctx)
{
    int ret = 0;

    if ((b->A == ((void*)0)) || (b->Ai == ((void*)0))) {
        BNerr(BN_F_BN_BLINDING_UPDATE, BN_R_NOT_INITIALIZED);
        goto err;
    }

    if (b->counter == -1)
        b->counter = 0;

    if (++b->counter == BN_BLINDING_COUNTER && b->e != ((void*)0) &&
        !(b->flags & BN_BLINDING_NO_RECREATE)) {

        if (!BN_BLINDING_create_param(b, ((void*)0), ((void*)0), ctx, ((void*)0), ((void*)0)))
            goto err;
    } else if (!(b->flags & BN_BLINDING_NO_UPDATE)) {
        if (b->m_ctx != ((void*)0)) {
            if (!bn_mul_mont_fixed_top(b->Ai, b->Ai, b->Ai, b->m_ctx, ctx)
                || !bn_mul_mont_fixed_top(b->A, b->A, b->A, b->m_ctx, ctx))
                goto err;
        } else {
            if (!BN_mod_mul(b->Ai, b->Ai, b->Ai, b->mod, ctx)
                || !BN_mod_mul(b->A, b->A, b->A, b->mod, ctx))
                goto err;
        }
    }

    ret = 1;
 err:
    if (b->counter == BN_BLINDING_COUNTER)
        b->counter = 0;
    return ret;
}
