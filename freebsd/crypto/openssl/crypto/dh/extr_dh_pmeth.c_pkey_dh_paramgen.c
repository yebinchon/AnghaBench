
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rfc5114_param; scalar_t__ param_nid; int generator; int prime_len; scalar_t__ use_dsa; } ;
struct TYPE_6__ {scalar_t__ pkey_gencb; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int DSA ;
typedef TYPE_2__ DH_PKEY_CTX ;
typedef int DH ;
typedef int BN_GENCB ;


 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int DH_free (int *) ;
 int DH_generate_parameters_ex (int *,int ,int ,int *) ;
 int * DH_get_1024_160 () ;
 int * DH_get_2048_224 () ;
 int * DH_get_2048_256 () ;
 int * DH_new () ;
 int * DH_new_by_nid (scalar_t__) ;
 int * DSA_dup_DH (int *) ;
 int DSA_free (int *) ;
 int EVP_PKEY_DH ;
 int EVP_PKEY_DHX ;
 int EVP_PKEY_assign (int *,int ,int *) ;
 int EVP_PKEY_assign_DH (int *,int *) ;
 int * dsa_dh_generate (TYPE_2__*,int *) ;
 int evp_pkey_set_cb_translate (int *,TYPE_1__*) ;

__attribute__((used)) static int pkey_dh_paramgen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    DH *dh = ((void*)0);
    DH_PKEY_CTX *dctx = ctx->data;
    BN_GENCB *pcb;
    int ret;
    if (dctx->rfc5114_param) {
        switch (dctx->rfc5114_param) {
        case 1:
            dh = DH_get_1024_160();
            break;

        case 2:
            dh = DH_get_2048_224();
            break;

        case 3:
            dh = DH_get_2048_256();
            break;

        default:
            return -2;
        }
        EVP_PKEY_assign(pkey, EVP_PKEY_DHX, dh);
        return 1;
    }

    if (dctx->param_nid != 0) {
        if ((dh = DH_new_by_nid(dctx->param_nid)) == ((void*)0))
            return 0;
        EVP_PKEY_assign(pkey, EVP_PKEY_DH, dh);
        return 1;
    }

    if (ctx->pkey_gencb) {
        pcb = BN_GENCB_new();
        if (pcb == ((void*)0))
            return 0;
        evp_pkey_set_cb_translate(pcb, ctx);
    } else
        pcb = ((void*)0);

    if (dctx->use_dsa) {
        DSA *dsa_dh;
        dsa_dh = dsa_dh_generate(dctx, pcb);
        BN_GENCB_free(pcb);
        if (dsa_dh == ((void*)0))
            return 0;
        dh = DSA_dup_DH(dsa_dh);
        DSA_free(dsa_dh);
        if (!dh)
            return 0;
        EVP_PKEY_assign(pkey, EVP_PKEY_DHX, dh);
        return 1;
    }

    dh = DH_new();
    if (dh == ((void*)0)) {
        BN_GENCB_free(pcb);
        return 0;
    }
    ret = DH_generate_parameters_ex(dh,
                                    dctx->prime_len, dctx->generator, pcb);
    BN_GENCB_free(pcb);
    if (ret)
        EVP_PKEY_assign_DH(pkey, dh);
    else
        DH_free(dh);
    return ret;
}
