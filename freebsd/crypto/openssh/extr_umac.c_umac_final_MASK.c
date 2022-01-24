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
typedef  int /*<<< orphan*/  u_char ;
struct umac_ctx {int /*<<< orphan*/  pdf; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct umac_ctx *ctx, u_char tag[], const u_char nonce[8])
/* Incorporate any pending data, pad, and generate tag */
{
    FUNC1(&ctx->hash, (u_char *)tag);
    FUNC0(&ctx->pdf, (const UINT8 *)nonce, (UINT8 *)tag);

    return (1);
}