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
struct mlx5_hugetlb_mem {int shmid; void* shmaddr; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  MLX5_DBG_CONTIG ; 
 size_t MLX5_Q_CHUNK_SIZE ; 
 int /*<<< orphan*/  MLX5_SHMAT_FLAGS ; 
 int /*<<< orphan*/  MLX5_SHM_ADDR ; 
 int /*<<< orphan*/  MLX5_SHM_LENGTH ; 
 int SHM_HUGETLB ; 
 int SHM_R ; 
 int SHM_W ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_hugetlb_mem*) ; 
 struct mlx5_hugetlb_mem* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_hugetlb_mem *FUNC10(size_t size)
{
	struct mlx5_hugetlb_mem *hmem;
	size_t shm_len;

	hmem = FUNC2(sizeof(*hmem));
	if (!hmem)
		return NULL;

	shm_len = FUNC0(size, MLX5_SHM_LENGTH);
	hmem->shmid = FUNC8(IPC_PRIVATE, shm_len, SHM_HUGETLB | SHM_R | SHM_W);
	if (hmem->shmid == -1) {
		FUNC4(stderr, MLX5_DBG_CONTIG, "%s\n", FUNC9(errno));
		goto out_free;
	}

	hmem->shmaddr = FUNC5(hmem->shmid, MLX5_SHM_ADDR, MLX5_SHMAT_FLAGS);
	if (hmem->shmaddr == (void *)-1) {
		FUNC4(stderr, MLX5_DBG_CONTIG, "%s\n", FUNC9(errno));
		goto out_rmid;
	}

	if (FUNC3(&hmem->bitmap, shm_len / MLX5_Q_CHUNK_SIZE,
			     shm_len / MLX5_Q_CHUNK_SIZE - 1)) {
		FUNC4(stderr, MLX5_DBG_CONTIG, "%s\n", FUNC9(errno));
		goto out_shmdt;
	}

	/*
	 * Marked to be destroyed when process detaches from shmget segment
	 */
	FUNC6(hmem->shmid, IPC_RMID, NULL);

	return hmem;

out_shmdt:
	if (FUNC7(hmem->shmaddr) == -1)
		FUNC4(stderr, MLX5_DBG_CONTIG, "%s\n", FUNC9(errno));

out_rmid:
	FUNC6(hmem->shmid, IPC_RMID, NULL);

out_free:
	FUNC1(hmem);
	return NULL;
}