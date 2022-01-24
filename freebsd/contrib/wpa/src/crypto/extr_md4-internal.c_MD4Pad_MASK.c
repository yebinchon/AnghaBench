#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int count; } ;
typedef  TYPE_1__ MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int MD4_BLOCK_LENGTH ; 
 int /*<<< orphan*/ * PADDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(MD4_CTX *ctx)
{
	u8 count[8];
	size_t padlen;

	/* Convert count to 8 bytes in little endian order. */
	FUNC1(count, ctx->count);

	/* Pad out to 56 mod 64. */
	padlen = MD4_BLOCK_LENGTH -
	    ((ctx->count >> 3) & (MD4_BLOCK_LENGTH - 1));
	if (padlen < 1 + 8)
		padlen += MD4_BLOCK_LENGTH;
	FUNC0(ctx, PADDING, padlen - 8);		/* padlen - 8 <= 64 */
	FUNC0(ctx, count, 8);
}