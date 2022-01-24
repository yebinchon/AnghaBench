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
struct ibv_mr {int dummy; } ;
struct mlx5_mr {int alloc_flags; struct ibv_mr ibv_mr; int /*<<< orphan*/  buf; } ;
struct ibv_reg_mr_resp {int dummy; } ;
struct ibv_reg_mr {int dummy; } ;
struct ibv_pd {int dummy; } ;
typedef  enum ibv_access_flags { ____Placeholder_ibv_access_flags } ibv_access_flags ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 struct mlx5_mr* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_mr*) ; 
 int FUNC2 (struct ibv_pd*,void*,size_t,uintptr_t,int,struct ibv_mr*,struct ibv_reg_mr*,int,struct ibv_reg_mr_resp*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct ibv_mr *FUNC4(struct ibv_pd *pd, void *addr, size_t length,
			   int acc)
{
	struct mlx5_mr *mr;
	struct ibv_reg_mr cmd;
	int ret;
	enum ibv_access_flags access = (enum ibv_access_flags)acc;
	struct ibv_reg_mr_resp resp;

	mr = FUNC0(1, sizeof(*mr));
	if (!mr)
		return NULL;

	ret = FUNC2(pd, addr, length, (uintptr_t)addr, access,
			     &(mr->ibv_mr), &cmd, sizeof(cmd), &resp,
			     sizeof resp);
	if (ret) {
		FUNC3(&(mr->buf));
		FUNC1(mr);
		return NULL;
	}
	mr->alloc_flags = acc;

	return &mr->ibv_mr;
}