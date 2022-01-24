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
struct ssh_hmac_ctx {int buf_len; struct ssh_hmac_ctx* buf; int /*<<< orphan*/  digest; int /*<<< orphan*/  octx; int /*<<< orphan*/  ictx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh_hmac_ctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh_hmac_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct ssh_hmac_ctx *ctx)
{
	if (ctx != NULL) {
		FUNC2(ctx->ictx);
		FUNC2(ctx->octx);
		FUNC2(ctx->digest);
		if (ctx->buf) {
			FUNC0(ctx->buf, ctx->buf_len);
			FUNC1(ctx->buf);
		}
		FUNC0(ctx, sizeof(*ctx));
		FUNC1(ctx);
	}
}