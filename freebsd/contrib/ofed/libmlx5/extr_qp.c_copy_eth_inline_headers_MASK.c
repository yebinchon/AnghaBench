#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mlx5_wqe_eth_seg {int inline_hdr_start; int /*<<< orphan*/  inline_hdr_sz; } ;
struct mlx5_sg_copy_ptr {int index; int offset; } ;
struct ibv_send_wr {int num_sge; TYPE_1__* sg_list; } ;
struct ibv_qp {int /*<<< orphan*/  context; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dbg_fp; } ;
struct TYPE_3__ {int length; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLX5_DBG_QP_SEND ; 
 int MLX5_ETH_L2_INLINE_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,void*,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(struct ibv_qp *ibqp,
					  struct ibv_send_wr *wr,
					  struct mlx5_wqe_eth_seg *eseg,
					  struct mlx5_sg_copy_ptr *sg_copy_ptr)
{
	uint32_t inl_hdr_size = MLX5_ETH_L2_INLINE_HEADER_SIZE;
	int inl_hdr_copy_size = 0;
	int j = 0;
	FILE *fp = FUNC5(ibqp->context)->dbg_fp;

	if (FUNC6(wr->num_sge < 1)) {
		FUNC4(fp, MLX5_DBG_QP_SEND, "illegal num_sge: %d, minimum is 1\n",
			 wr->num_sge);
		return EINVAL;
	}

	if (FUNC1(wr->sg_list[0].length >= MLX5_ETH_L2_INLINE_HEADER_SIZE)) {
		inl_hdr_copy_size = MLX5_ETH_L2_INLINE_HEADER_SIZE;
		FUNC2(eseg->inline_hdr_start,
		       (void *)(uintptr_t)wr->sg_list[0].addr,
		       inl_hdr_copy_size);
	} else {
		for (j = 0; j < wr->num_sge && inl_hdr_size > 0; ++j) {
			inl_hdr_copy_size = FUNC3(wr->sg_list[j].length,
						inl_hdr_size);
			FUNC2(eseg->inline_hdr_start +
			       (MLX5_ETH_L2_INLINE_HEADER_SIZE - inl_hdr_size),
			       (void *)(uintptr_t)wr->sg_list[j].addr,
			       inl_hdr_copy_size);
			inl_hdr_size -= inl_hdr_copy_size;
		}
		if (FUNC6(inl_hdr_size)) {
			FUNC4(fp, MLX5_DBG_QP_SEND, "Ethernet headers < 16 bytes\n");
			return EINVAL;
		}
		--j;
	}


	eseg->inline_hdr_sz = FUNC0(MLX5_ETH_L2_INLINE_HEADER_SIZE);

	/* If we copied all the sge into the inline-headers, then we need to
	 * start copying from the next sge into the data-segment.
	 */
	if (FUNC6(wr->sg_list[j].length == inl_hdr_copy_size)) {
		++j;
		inl_hdr_copy_size = 0;
	}

	sg_copy_ptr->index = j;
	sg_copy_ptr->offset = inl_hdr_copy_size;

	return 0;
}