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
typedef  int /*<<< orphan*/  uint8_t ;
struct padlock_sha_ctx {int /*<<< orphan*/  psc_offset; int /*<<< orphan*/  psc_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct padlock_sha_ctx*) ; 

__attribute__((used)) static void
FUNC2(uint8_t *hash, struct padlock_sha_ctx *ctx)
{

	FUNC0(ctx->psc_buf, hash, ctx->psc_offset);
	FUNC1(ctx);
}