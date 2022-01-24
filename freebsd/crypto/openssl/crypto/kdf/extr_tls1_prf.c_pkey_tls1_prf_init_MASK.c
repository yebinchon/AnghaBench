#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  TLS1_PRF_PKEY_CTX ;
typedef  TYPE_1__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  KDF_F_PKEY_TLS1_PRF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(EVP_PKEY_CTX *ctx)
{
    TLS1_PRF_PKEY_CTX *kctx;

    if ((kctx = FUNC1(sizeof(*kctx))) == NULL) {
        FUNC0(KDF_F_PKEY_TLS1_PRF_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ctx->data = kctx;

    return 1;
}