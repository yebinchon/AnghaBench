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
struct mlx5_context {void* dbg_fp; } ;

/* Variables and functions */
 void* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,char*) ; 
 char* FUNC2 (char*) ; 
 void* stderr ; 

__attribute__((used)) static void FUNC3(struct mlx5_context *ctx)
{
	char *env;

	env = FUNC2("MLX5_DEBUG_FILE");
	if (!env) {
		ctx->dbg_fp = stderr;
		return;
	}

	ctx->dbg_fp = FUNC0(env, "aw+");
	if (!ctx->dbg_fp) {
		FUNC1(stderr, "Failed opening debug file %s, using stderr\n", env);
		ctx->dbg_fp = stderr;
		return;
	}
}