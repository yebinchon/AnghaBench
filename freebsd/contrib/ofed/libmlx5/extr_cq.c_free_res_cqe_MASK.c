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
typedef  int /*<<< orphan*/  uint32_t ;
struct mlx5_srq {int dummy; } ;
struct mlx5_cqe64 {int /*<<< orphan*/  wqe_counter; int /*<<< orphan*/  srqn_uidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_cqe64*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx5_cqe64*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_srq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_cqe64*) ; 

__attribute__((used)) static inline int FUNC7(struct mlx5_cqe64 *cqe64, uint32_t rsn,
			       struct mlx5_srq *srq, int cqe_version)
{
	if (cqe_version) {
		if (FUNC3(cqe64, rsn)) {
			if (srq && FUNC4(FUNC6(cqe64)))
				FUNC5(srq,
						  FUNC0(cqe64->wqe_counter));
			return 1;
		}
	} else {
		if (FUNC2(cqe64, rsn)) {
			if (srq && (FUNC1(cqe64->srqn_uidx) & 0xffffff))
				FUNC5(srq,
						  FUNC0(cqe64->wqe_counter));
			return 1;
		}
	}

	return 0;
}