#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ keygen_info_count; TYPE_2__* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ctx; TYPE_1__ ktmp; } ;
typedef  TYPE_2__ HMAC_PKEY_CTX ;
typedef  TYPE_3__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_PKEY_HMAC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 

__attribute__((used)) static int FUNC4(EVP_PKEY_CTX *ctx)
{
    HMAC_PKEY_CTX *hctx;

    if ((hctx = FUNC3(sizeof(*hctx))) == NULL) {
        FUNC0(CRYPTO_F_PKEY_HMAC_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    hctx->ktmp.type = V_ASN1_OCTET_STRING;
    hctx->ctx = FUNC1();
    if (hctx->ctx == NULL) {
        FUNC2(hctx);
        return 0;
    }

    ctx->data = hctx;
    ctx->keygen_info_count = 0;

    return 1;
}