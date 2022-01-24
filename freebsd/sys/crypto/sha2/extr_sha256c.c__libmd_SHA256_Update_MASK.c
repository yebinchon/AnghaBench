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
typedef  size_t uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int count; unsigned char const* buf; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 

void
FUNC2(SHA256_CTX * ctx, const void *in, size_t len)
{
	uint64_t bitlen;
	uint32_t r;
	const unsigned char *src = in;

	/* Number of bytes left in the buffer from previous updates */
	r = (ctx->count >> 3) & 0x3f;

	/* Convert the length into a number of bits */
	bitlen = len << 3;

	/* Update number of bits */
	ctx->count += bitlen;

	/* Handle the case where we don't need to perform any transforms */
	if (len < 64 - r) {
		FUNC1(&ctx->buf[r], src, len);
		return;
	}

	/* Finish the current block */
	FUNC1(&ctx->buf[r], src, 64 - r);
	FUNC0(ctx->state, ctx->buf);
	src += 64 - r;
	len -= 64 - r;

	/* Perform complete blocks */
	while (len >= 64) {
		FUNC0(ctx->state, src);
		src += 64;
		len -= 64;
	}

	/* Copy left over data into buffer */
	FUNC1(ctx->buf, src, len);
}