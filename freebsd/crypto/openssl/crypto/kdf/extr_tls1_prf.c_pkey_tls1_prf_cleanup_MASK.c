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
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  seedlen; int /*<<< orphan*/  seed; int /*<<< orphan*/  seclen; int /*<<< orphan*/  sec; } ;
typedef  TYPE_1__ TLS1_PRF_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(EVP_PKEY_CTX *ctx)
{
    TLS1_PRF_PKEY_CTX *kctx = ctx->data;
    FUNC1(kctx->sec, kctx->seclen);
    FUNC0(kctx->seed, kctx->seedlen);
    FUNC2(kctx);
}