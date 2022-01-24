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
struct mlx5_wqe_inline_seg {int /*<<< orphan*/  byte_count; } ;
struct mlx5_sg_copy_ptr {int offset; int index; } ;
struct TYPE_3__ {void* qend; } ;
struct mlx5_qp {int max_inline_data; TYPE_1__ sq; } ;
struct ibv_send_wr {int num_sge; TYPE_2__* sg_list; } ;
struct TYPE_4__ {int length; scalar_t__ addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MLX5_INLINE_SEG ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 void* FUNC4 (struct mlx5_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mlx5_qp *qp, struct ibv_send_wr *wr,
			    void *wqe, int *sz,
			    struct mlx5_sg_copy_ptr *sg_copy_ptr)
{
	struct mlx5_wqe_inline_seg *seg;
	void *addr;
	int len;
	int i;
	int inl = 0;
	void *qend = qp->sq.qend;
	int copy;
	int offset = sg_copy_ptr->offset;

	seg = wqe;
	wqe += sizeof *seg;
	for (i = sg_copy_ptr->index; i < wr->num_sge; ++i) {
		addr = (void *) (unsigned long)(wr->sg_list[i].addr + offset);
		len  = wr->sg_list[i].length - offset;
		inl += len;
		offset = 0;

		if (FUNC5(inl > qp->max_inline_data))
			return ENOMEM;

		if (FUNC5(wqe + len > qend)) {
			copy = qend - wqe;
			FUNC3(wqe, addr, copy);
			addr += copy;
			len -= copy;
			wqe = FUNC4(qp, 0);
		}
		FUNC3(wqe, addr, len);
		wqe += len;
	}

	if (FUNC2(inl)) {
		seg->byte_count = FUNC1(inl | MLX5_INLINE_SEG);
		*sz = FUNC0(inl + sizeof seg->byte_count, 16) / 16;
	} else
		*sz = 0;

	return 0;
}