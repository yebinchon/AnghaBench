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
struct TYPE_7__ {int /*<<< orphan*/  kdf_ukmlen; int /*<<< orphan*/ * kdf_ukm; int /*<<< orphan*/  kdf_outlen; int /*<<< orphan*/  kdf_md; int /*<<< orphan*/  kdf_type; scalar_t__ co_key; int /*<<< orphan*/  md; scalar_t__ gen_group; } ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  TYPE_2__ EC_PKEY_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    EC_PKEY_CTX *dctx, *sctx;
    if (!FUNC3(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    if (sctx->gen_group) {
        dctx->gen_group = FUNC0(sctx->gen_group);
        if (!dctx->gen_group)
            return 0;
    }
    dctx->md = sctx->md;

    if (sctx->co_key) {
        dctx->co_key = FUNC1(sctx->co_key);
        if (!dctx->co_key)
            return 0;
    }
    dctx->kdf_type = sctx->kdf_type;
    dctx->kdf_md = sctx->kdf_md;
    dctx->kdf_outlen = sctx->kdf_outlen;
    if (sctx->kdf_ukm) {
        dctx->kdf_ukm = FUNC2(sctx->kdf_ukm, sctx->kdf_ukmlen);
        if (!dctx->kdf_ukm)
            return 0;
    } else
        dctx->kdf_ukm = NULL;
    dctx->kdf_ukmlen = sctx->kdf_ukmlen;
    return 1;
}