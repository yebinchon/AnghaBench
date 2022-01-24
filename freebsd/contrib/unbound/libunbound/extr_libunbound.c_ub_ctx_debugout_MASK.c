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
struct ub_ctx {int logfile_override; int /*<<< orphan*/  cfglock; void* log_out; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int UB_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ub_ctx* ctx, void* out)
{
	FUNC0(&ctx->cfglock);
	FUNC2((FILE*)out);
	ctx->logfile_override = 1;
	ctx->log_out = out;
	FUNC1(&ctx->cfglock);
	return UB_NOERROR;
}