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
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_3__ {int count; int /*<<< orphan*/  const* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ RMD160_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int RMD160_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 

void
FUNC2(RMD160_CTX *ctx, const u_int8_t *input, size_t len)
{
	size_t have, off, need;

	have = (ctx->count / 8) % RMD160_BLOCK_LENGTH;
	need = RMD160_BLOCK_LENGTH - have;
	ctx->count += 8 * len;
	off = 0;

	if (len >= need) {
		if (have) {
			FUNC1(ctx->buffer + have, input, need);
			FUNC0(ctx->state, ctx->buffer);
			off = need;
			have = 0;
		}
		/* now the buffer is empty */
		while (off + RMD160_BLOCK_LENGTH <= len) {
			FUNC0(ctx->state, input+off);
			off += RMD160_BLOCK_LENGTH;
		}
	}
	if (off < len)
		FUNC1(ctx->buffer + have, input+off, len-off);
}