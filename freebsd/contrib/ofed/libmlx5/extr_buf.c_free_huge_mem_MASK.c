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
struct mlx5_hugetlb_mem {int /*<<< orphan*/  shmid; int /*<<< orphan*/  shmaddr; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  MLX5_DBG_CONTIG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_hugetlb_mem*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5_hugetlb_mem *hmem)
{
	FUNC1(&hmem->bitmap);
	if (FUNC4(hmem->shmaddr) == -1)
		FUNC2(stderr, MLX5_DBG_CONTIG, "%s\n", FUNC5(errno));
	FUNC3(hmem->shmid, IPC_RMID, NULL);
	FUNC0(hmem);
}