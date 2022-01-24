#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int rfc5114_param; scalar_t__ param_nid; int /*<<< orphan*/  generator; int /*<<< orphan*/  prime_len; scalar_t__ use_dsa; } ;
struct TYPE_6__ {scalar_t__ pkey_gencb; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  DSA ;
typedef  TYPE_2__ DH_PKEY_CTX ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_DH ; 
 int /*<<< orphan*/  EVP_PKEY_DHX ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    DH *dh = NULL;
    DH_PKEY_CTX *dctx = ctx->data;
    BN_GENCB *pcb;
    int ret;
    if (dctx->rfc5114_param) {
        switch (dctx->rfc5114_param) {
        case 1:
            dh = FUNC4();
            break;

        case 2:
            dh = FUNC5();
            break;

        case 3:
            dh = FUNC6();
            break;

        default:
            return -2;
        }
        FUNC11(pkey, EVP_PKEY_DHX, dh);
        return 1;
    }

    if (dctx->param_nid != 0) {
        if ((dh = FUNC8(dctx->param_nid)) == NULL)
            return 0;
        FUNC11(pkey, EVP_PKEY_DH, dh);
        return 1;
    }

    if (ctx->pkey_gencb) {
        pcb = FUNC1();
        if (pcb == NULL)
            return 0;
        FUNC14(pcb, ctx);
    } else
        pcb = NULL;
#ifndef OPENSSL_NO_DSA
    if (dctx->use_dsa) {
        DSA *dsa_dh;
        dsa_dh = FUNC13(dctx, pcb);
        FUNC0(pcb);
        if (dsa_dh == NULL)
            return 0;
        dh = FUNC9(dsa_dh);
        FUNC10(dsa_dh);
        if (!dh)
            return 0;
        FUNC11(pkey, EVP_PKEY_DHX, dh);
        return 1;
    }
#endif
    dh = FUNC7();
    if (dh == NULL) {
        FUNC0(pcb);
        return 0;
    }
    ret = FUNC3(dh,
                                    dctx->prime_len, dctx->generator, pcb);
    FUNC0(pcb);
    if (ret)
        FUNC12(pkey, dh);
    else
        FUNC2(dh);
    return ret;
}