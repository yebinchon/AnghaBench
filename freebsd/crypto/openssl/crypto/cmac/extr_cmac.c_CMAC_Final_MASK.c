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
struct TYPE_3__ {int nlast_block; unsigned char* last_block; unsigned char* k1; unsigned char* k2; int /*<<< orphan*/  cctx; } ;
typedef  TYPE_1__ CMAC_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC4(CMAC_CTX *ctx, unsigned char *out, size_t *poutlen)
{
    int i, bl, lb;
    if (ctx->nlast_block == -1)
        return 0;
    bl = FUNC0(ctx->cctx);
    *poutlen = (size_t)bl;
    if (!out)
        return 1;
    lb = ctx->nlast_block;
    /* Is last block complete? */
    if (lb == bl) {
        for (i = 0; i < bl; i++)
            out[i] = ctx->last_block[i] ^ ctx->k1[i];
    } else {
        ctx->last_block[lb] = 0x80;
        if (bl - lb > 1)
            FUNC3(ctx->last_block + lb + 1, 0, bl - lb - 1);
        for (i = 0; i < bl; i++)
            out[i] = ctx->last_block[i] ^ ctx->k2[i];
    }
    if (!FUNC1(ctx->cctx, out, out, bl)) {
        FUNC2(out, bl);
        return 0;
    }
    return 1;
}