#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int seclen; int seed; int seedlen; int /*<<< orphan*/ * sec; void* md; } ;
typedef  TYPE_1__ TLS1_PRF_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;

/* Variables and functions */
#define  EVP_PKEY_CTRL_TLS_MD 130 
#define  EVP_PKEY_CTRL_TLS_SECRET 129 
#define  EVP_PKEY_CTRL_TLS_SEED 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (void*,int) ; 
 int TLS1_PRF_MAXBUF ; 
 int /*<<< orphan*/  FUNC3 (int,void*,int) ; 

__attribute__((used)) static int FUNC4(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    TLS1_PRF_PKEY_CTX *kctx = ctx->data;
    switch (type) {
    case EVP_PKEY_CTRL_TLS_MD:
        kctx->md = p2;
        return 1;

    case EVP_PKEY_CTRL_TLS_SECRET:
        if (p1 < 0)
            return 0;
        if (kctx->sec != NULL)
            FUNC1(kctx->sec, kctx->seclen);
        FUNC0(kctx->seed, kctx->seedlen);
        kctx->seedlen = 0;
        kctx->sec = FUNC2(p2, p1);
        if (kctx->sec == NULL)
            return 0;
        kctx->seclen  = p1;
        return 1;

    case EVP_PKEY_CTRL_TLS_SEED:
        if (p1 == 0 || p2 == NULL)
            return 1;
        if (p1 < 0 || p1 > (int)(TLS1_PRF_MAXBUF - kctx->seedlen))
            return 0;
        FUNC3(kctx->seed + kctx->seedlen, p2, p1);
        kctx->seedlen += p1;
        return 1;

    default:
        return -2;

    }
}