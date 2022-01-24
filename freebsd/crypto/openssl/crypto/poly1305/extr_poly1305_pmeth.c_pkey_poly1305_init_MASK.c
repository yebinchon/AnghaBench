#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_1__ ktmp; } ;
typedef  TYPE_2__ POLY1305_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_PKEY_POLY1305_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 

__attribute__((used)) static int FUNC4(EVP_PKEY_CTX *ctx)
{
    POLY1305_PKEY_CTX *pctx;

    if ((pctx = FUNC3(sizeof(*pctx))) == NULL) {
        FUNC0(CRYPTO_F_PKEY_POLY1305_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    pctx->ktmp.type = V_ASN1_OCTET_STRING;

    FUNC2(ctx, pctx);
    FUNC1(ctx, NULL, 0);
    return 1;
}