
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_wqe_ctrl_seg {int fence_size; int owner_opcode; } ;
struct TYPE_2__ {int wqe_cnt; int wqe_shift; } ;
struct mlx4_qp {TYPE_1__ sq; } ;


 struct mlx4_wqe_ctrl_seg* get_send_wqe (struct mlx4_qp*,int) ;
 int htobe32 (int) ;
 int stamp_send_wqe (struct mlx4_qp*,int) ;

void mlx4_qp_init_sq_ownership(struct mlx4_qp *qp)
{
 struct mlx4_wqe_ctrl_seg *ctrl;
 int i;

 for (i = 0; i < qp->sq.wqe_cnt; ++i) {
  ctrl = get_send_wqe(qp, i);
  ctrl->owner_opcode = htobe32(1 << 31);
  ctrl->fence_size = 1 << (qp->sq.wqe_shift - 4);

  stamp_send_wqe(qp, i);
 }
}
