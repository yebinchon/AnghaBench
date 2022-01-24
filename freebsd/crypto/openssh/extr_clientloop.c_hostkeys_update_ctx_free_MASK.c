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
struct hostkeys_update_ctx {size_t nkeys; size_t nold; struct hostkeys_update_ctx* ip_str; struct hostkeys_update_ctx* host_str; struct hostkeys_update_ctx* old_keys; struct hostkeys_update_ctx* keys_seen; struct hostkeys_update_ctx* keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostkeys_update_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostkeys_update_ctx) ; 

__attribute__((used)) static void
FUNC2(struct hostkeys_update_ctx *ctx)
{
	size_t i;

	if (ctx == NULL)
		return;
	for (i = 0; i < ctx->nkeys; i++)
		FUNC1(ctx->keys[i]);
	FUNC0(ctx->keys);
	FUNC0(ctx->keys_seen);
	for (i = 0; i < ctx->nold; i++)
		FUNC1(ctx->old_keys[i]);
	FUNC0(ctx->old_keys);
	FUNC0(ctx->host_str);
	FUNC0(ctx->ip_str);
	FUNC0(ctx);
}