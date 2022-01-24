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
struct mlx5_context {scalar_t__ dbg_fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ stderr ; 

__attribute__((used)) static void FUNC1(struct mlx5_context *ctx)
{
	if (ctx->dbg_fp && ctx->dbg_fp != stderr)
		FUNC0(ctx->dbg_fp);
}