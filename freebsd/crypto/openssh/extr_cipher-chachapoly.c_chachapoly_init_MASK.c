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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct chachapoly_ctx {int /*<<< orphan*/  header_ctx; int /*<<< orphan*/  main_ctx; } ;

/* Variables and functions */
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int
FUNC1(struct chachapoly_ctx *ctx,
    const u_char *key, u_int keylen)
{
	if (keylen != (32 + 32)) /* 2 x 256 bit keys */
		return SSH_ERR_INVALID_ARGUMENT;
	FUNC0(&ctx->main_ctx, key, 256);
	FUNC0(&ctx->header_ctx, key + 32, 256);
	return 0;
}