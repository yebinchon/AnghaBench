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
struct ibv_context {int /*<<< orphan*/  cmd_fd; } ;
struct mlx5_context {int /*<<< orphan*/  dbg_fp; struct ibv_context ibv_ctx; } ;
struct mlx5_buf {size_t length; int /*<<< orphan*/  type; void* buf; } ;
typedef  int off_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MLX5_ALLOC_TYPE_CONTIG ; 
 int /*<<< orphan*/  MLX5_DBG_CONTIG ; 
 int /*<<< orphan*/  MLX5_MMAP_GET_CONTIGUOUS_PAGES_CMD ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*) ; 
 int FUNC3 (size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int*) ; 

int FUNC8(struct mlx5_context *mctx,
			  struct mlx5_buf *buf, size_t size,
			  int page_size,
			  const char *component)
{
	void *addr = MAP_FAILED;
	int block_size_exp;
	int max_block_log;
	int min_block_log;
	struct ibv_context *context = &mctx->ibv_ctx;
	off_t offset;

	FUNC1(&max_block_log,
				&min_block_log,
				component);

	block_size_exp = FUNC3(size);

	if (block_size_exp > max_block_log)
		block_size_exp = max_block_log;

	do {
		offset = 0;
		FUNC6(MLX5_MMAP_GET_CONTIGUOUS_PAGES_CMD, &offset);
		FUNC7(block_size_exp, &offset);
		addr = FUNC4(NULL , size, PROT_WRITE | PROT_READ, MAP_SHARED,
			    context->cmd_fd, page_size * offset);
		if (addr != MAP_FAILED)
			break;

		/*
		 *  The kernel returns EINVAL if not supported
		 */
		if (errno == EINVAL)
			return -1;

		block_size_exp -= 1;
	} while (block_size_exp >= min_block_log);
	FUNC2(mctx->dbg_fp, MLX5_DBG_CONTIG, "block order %d, addr %p\n",
		 block_size_exp, addr);

	if (addr == MAP_FAILED)
		return -1;

	if (FUNC0(addr, size)) {
		FUNC5(addr, size);
		return -1;
	}

	buf->buf = addr;
	buf->length = size;
	buf->type = MLX5_ALLOC_TYPE_CONTIG;

	return 0;
}