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
struct mlx5_srq {int dummy; } ;
struct mlx5_resource {int dummy; } ;
struct mlx5_cqe64 {int dummy; } ;
struct mlx5_cq {int dummy; } ;
struct ibv_wc {int dummy; } ;

/* Variables and functions */
 int CQ_EMPTY ; 
 int FUNC0 (struct mlx5_cq*,struct mlx5_cqe64**,void**) ; 
 int FUNC1 (struct mlx5_cq*,struct mlx5_cqe64*,void*,struct mlx5_resource**,struct mlx5_srq**,struct ibv_wc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct mlx5_cq *cq,
				struct mlx5_resource **cur_rsc,
				struct mlx5_srq **cur_srq,
				struct ibv_wc *wc, int cqe_ver)
{
	struct mlx5_cqe64 *cqe64;
	void *cqe;
	int err;

	err = FUNC0(cq, &cqe64, &cqe);
	if (err == CQ_EMPTY)
		return err;

	return FUNC1(cq, cqe64, cqe, cur_rsc, cur_srq, wc, cqe_ver, 0);
}