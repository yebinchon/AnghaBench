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
struct ibv_pd_1_0 {int /*<<< orphan*/  context; int /*<<< orphan*/  real_pd; } ;
struct ibv_mr_1_0 {struct ibv_mr* real_mr; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; struct ibv_pd_1_0* pd; int /*<<< orphan*/  context; } ;
struct ibv_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_mr_1_0*) ; 
 struct ibv_mr* FUNC1 (int /*<<< orphan*/ ,void*,size_t,int) ; 
 struct ibv_mr_1_0* FUNC2 (int) ; 

struct ibv_mr_1_0 *FUNC3(struct ibv_pd_1_0 *pd, void *addr,
				    size_t length, int access)
{
	struct ibv_mr *real_mr;
	struct ibv_mr_1_0 *mr;

	mr = FUNC2(sizeof *mr);
	if (!mr)
		return NULL;

	real_mr = FUNC1(pd->real_pd, addr, length, access);
	if (!real_mr) {
		FUNC0(mr);
		return NULL;
	}

	mr->context = pd->context;
	mr->pd      = pd;
	mr->lkey    = real_mr->lkey;
	mr->rkey    = real_mr->rkey;
	mr->real_mr = real_mr;

	return mr;
}