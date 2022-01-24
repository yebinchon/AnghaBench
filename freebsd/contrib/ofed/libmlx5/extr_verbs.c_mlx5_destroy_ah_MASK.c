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
struct mlx5_ah {scalar_t__ kern_ah; } ;
struct ibv_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ah*) ; 
 int FUNC1 (struct ibv_ah*) ; 
 struct mlx5_ah* FUNC2 (struct ibv_ah*) ; 

int FUNC3(struct ibv_ah *ah)
{
	struct mlx5_ah *mah = FUNC2(ah);
	int err;

	if (mah->kern_ah) {
		err = FUNC1(ah);
		if (err)
			return err;
	}

	FUNC0(mah);
	return 0;
}