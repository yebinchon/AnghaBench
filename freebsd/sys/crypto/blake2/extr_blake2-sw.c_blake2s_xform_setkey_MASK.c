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
typedef  int uint16_t ;
struct blake2s_xform_ctx {int klen; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(void *vctx, const uint8_t *key, uint16_t klen)
{
	struct blake2s_xform_ctx *ctx = vctx;

	if (klen > sizeof(ctx->key))
		FUNC1("invalid klen %u", (unsigned)klen);
	FUNC0(ctx->key, key, klen);
	ctx->klen = klen;
}