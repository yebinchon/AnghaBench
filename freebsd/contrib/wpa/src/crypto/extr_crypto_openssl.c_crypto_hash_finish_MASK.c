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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_hash {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_hash*,int) ; 

int FUNC4(struct crypto_hash *ctx, u8 *mac, size_t *len)
{
	unsigned int mdlen;
	int res;

	if (ctx == NULL)
		return -2;

	if (mac == NULL || len == NULL) {
		FUNC0(ctx->ctx);
		FUNC3(ctx, sizeof(*ctx));
		return 0;
	}

	mdlen = *len;
	res = FUNC1(ctx->ctx, mac, &mdlen);
	FUNC0(ctx->ctx);
	FUNC3(ctx, sizeof(*ctx));

	if (FUNC2())
		return -1;

	if (res == 1) {
		*len = mdlen;
		return 0;
	}

	return -1;
}