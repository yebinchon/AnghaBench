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
typedef  int uint64_t ;
struct mlx4_context {scalar_t__ hca_core_clock; } ;
struct ibv_context {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_context* FUNC2 (struct ibv_context*) ; 

__attribute__((used)) static int FUNC3(struct ibv_context *context, uint64_t *cycles)
{
	unsigned int clockhi, clocklo, clockhi1;
	int i;
	struct mlx4_context *ctx = FUNC2(context);

	if (!ctx->hca_core_clock)
		return -EOPNOTSUPP;

	/* Handle wraparound */
	for (i = 0; i < 2; i++) {
		clockhi = FUNC1(FUNC0(ctx->hca_core_clock));
		clocklo = FUNC1(FUNC0(ctx->hca_core_clock + 4));
		clockhi1 = FUNC1(FUNC0(ctx->hca_core_clock));
		if (clockhi == clockhi1)
			break;
	}

	*cycles = (uint64_t)clockhi << 32 | (uint64_t)clocklo;

	return 0;
}