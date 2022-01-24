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
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  oaep_labellen; scalar_t__ oaep_label; int /*<<< orphan*/  mgf1md; int /*<<< orphan*/  md; int /*<<< orphan*/  pad_mode; scalar_t__ pub_exp; int /*<<< orphan*/  nbits; } ;
typedef  TYPE_1__ RSA_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    RSA_PKEY_CTX *dctx, *sctx;

    if (!FUNC3(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    dctx->nbits = sctx->nbits;
    if (sctx->pub_exp) {
        dctx->pub_exp = FUNC0(sctx->pub_exp);
        if (!dctx->pub_exp)
            return 0;
    }
    dctx->pad_mode = sctx->pad_mode;
    dctx->md = sctx->md;
    dctx->mgf1md = sctx->mgf1md;
    if (sctx->oaep_label) {
        FUNC1(dctx->oaep_label);
        dctx->oaep_label = FUNC2(sctx->oaep_label, sctx->oaep_labellen);
        if (!dctx->oaep_label)
            return 0;
        dctx->oaep_labellen = sctx->oaep_labellen;
    }
    return 1;
}