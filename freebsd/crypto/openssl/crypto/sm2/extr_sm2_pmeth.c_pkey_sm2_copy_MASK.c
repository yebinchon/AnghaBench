#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  md; int /*<<< orphan*/  id_set; int /*<<< orphan*/  id_len; int /*<<< orphan*/ * id; int /*<<< orphan*/ * gen_group; } ;
typedef  TYPE_1__ SM2_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM2_F_PKEY_SM2_COPY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    SM2_PKEY_CTX *dctx, *sctx;

    if (!FUNC5(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    if (sctx->gen_group != NULL) {
        dctx->gen_group = FUNC0(sctx->gen_group);
        if (dctx->gen_group == NULL) {
            FUNC4(dst);
            return 0;
        }
    }
    if (sctx->id != NULL) {
        dctx->id = FUNC1(sctx->id_len);
        if (dctx->id == NULL) {
            FUNC2(SM2_F_PKEY_SM2_COPY, ERR_R_MALLOC_FAILURE);
            FUNC4(dst);
            return 0;
        }
        FUNC3(dctx->id, sctx->id, sctx->id_len);
    }
    dctx->id_len = sctx->id_len;
    dctx->id_set = sctx->id_set;
    dctx->md = sctx->md;

    return 1;
}