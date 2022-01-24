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
struct blake2s_xform_ctx {scalar_t__ klen; int /*<<< orphan*/  state; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLAKE2S_OUTBYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(void *vctx)
{
	struct blake2s_xform_ctx *ctx = vctx;
	int rc;

	if (ctx->klen > 0)
		rc = FUNC0(&ctx->state, BLAKE2S_OUTBYTES,
		    ctx->key, ctx->klen);
	else
		rc = FUNC1(&ctx->state, BLAKE2S_OUTBYTES);
	if (rc != 0)
		FUNC2("blake2s_init_key: invalid arguments");
}