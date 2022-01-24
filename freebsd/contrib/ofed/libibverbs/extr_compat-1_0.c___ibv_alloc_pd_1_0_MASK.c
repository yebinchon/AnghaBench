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
struct ibv_pd_1_0 {struct ibv_pd* real_pd; struct ibv_context_1_0* context; } ;
struct ibv_pd {int dummy; } ;
struct ibv_context_1_0 {int /*<<< orphan*/  real_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_pd_1_0*) ; 
 struct ibv_pd* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ibv_pd_1_0* FUNC2 (int) ; 

struct ibv_pd_1_0 *FUNC3(struct ibv_context_1_0 *context)
{
	struct ibv_pd *real_pd;
	struct ibv_pd_1_0 *pd;

	pd = FUNC2(sizeof *pd);
	if (!pd)
		return NULL;

	real_pd = FUNC1(context->real_context);
	if (!real_pd) {
		FUNC0(pd);
		return NULL;
	}

	pd->context = context;
	pd->real_pd = real_pd;

	return pd;
}