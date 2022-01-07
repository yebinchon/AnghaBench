
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pmd; int qbits; int nbits; } ;
struct TYPE_5__ {scalar_t__ pkey_gencb; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef TYPE_2__ DSA_PKEY_CTX ;
typedef int DSA ;
typedef int BN_GENCB ;


 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int DSA_free (int *) ;
 int * DSA_new () ;
 int EVP_PKEY_assign_DSA (int *,int *) ;
 int dsa_builtin_paramgen (int *,int ,int ,int ,int *,int ,int *,int *,int *,int *) ;
 int evp_pkey_set_cb_translate (int *,TYPE_1__*) ;

__attribute__((used)) static int pkey_dsa_paramgen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    DSA *dsa = ((void*)0);
    DSA_PKEY_CTX *dctx = ctx->data;
    BN_GENCB *pcb;
    int ret;

    if (ctx->pkey_gencb) {
        pcb = BN_GENCB_new();
        if (pcb == ((void*)0))
            return 0;
        evp_pkey_set_cb_translate(pcb, ctx);
    } else
        pcb = ((void*)0);
    dsa = DSA_new();
    if (dsa == ((void*)0)) {
        BN_GENCB_free(pcb);
        return 0;
    }
    ret = dsa_builtin_paramgen(dsa, dctx->nbits, dctx->qbits, dctx->pmd,
                               ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), pcb);
    BN_GENCB_free(pcb);
    if (ret)
        EVP_PKEY_assign_DSA(pkey, dsa);
    else
        DSA_free(dsa);
    return ret;
}
