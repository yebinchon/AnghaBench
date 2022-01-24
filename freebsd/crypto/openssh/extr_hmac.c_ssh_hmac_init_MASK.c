#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ssh_hmac_ctx {size_t buf_len; int* buf; int /*<<< orphan*/  digest; int /*<<< orphan*/  ictx; int /*<<< orphan*/  octx; int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,void const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void const*,size_t,int*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,size_t) ; 

int
FUNC5(struct ssh_hmac_ctx *ctx, const void *key, size_t klen)
{
	size_t i;

	/* reset ictx and octx if no is key given */
	if (key != NULL) {
		/* truncate long keys */
		if (klen <= ctx->buf_len)
			FUNC1(ctx->buf, key, klen);
		else if (FUNC3(ctx->alg, key, klen, ctx->buf,
		    ctx->buf_len) < 0)
			return -1;
		for (i = 0; i < ctx->buf_len; i++)
			ctx->buf[i] ^= 0x36;
		if (FUNC4(ctx->ictx, ctx->buf, ctx->buf_len) < 0)
			return -1;
		for (i = 0; i < ctx->buf_len; i++)
			ctx->buf[i] ^= 0x36 ^ 0x5c;
		if (FUNC4(ctx->octx, ctx->buf, ctx->buf_len) < 0)
			return -1;
		FUNC0(ctx->buf, ctx->buf_len);
	}
	/* start with ictx */
	if (FUNC2(ctx->ictx, ctx->digest) < 0)
		return -1;
	return 0;
}