#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct TYPE_2__ {int count; unsigned char const* buf; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC2(void *vctx, const void *vdata, u_int len)
{
	SHA256_CTX *ctx = vctx;
	uint64_t bitlen;
	uint32_t r;
	u_int blocks;
	const unsigned char *src = vdata;

	/* Number of bytes left in the buffer from previous updates */
	r = (ctx->count >> 3) & 0x3f;

	/* Convert the length into a number of bits */
	bitlen = len << 3;

	/* Update number of bits */
	ctx->count += bitlen;

	/* Handle the case where we don't need to perform any transforms */
	if (len < 64 - r) {
		FUNC1(&ctx->buf[r], src, len);
		return (0);
	}

	/* Finish the current block */
	FUNC1(&ctx->buf[r], src, 64 - r);
	FUNC0(ctx->state, ctx->buf, 1);
	src += 64 - r;
	len -= 64 - r;

	/* Perform complete blocks */
	if (len >= 64) {
		blocks = len / 64;
		FUNC0(ctx->state, src, blocks);
		src += blocks * 64;
		len -= blocks * 64;
	}

	/* Copy left over data into buffer */
	FUNC1(ctx->buf, src, len);
	return (0);
}