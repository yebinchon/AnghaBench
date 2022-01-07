
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_wqe_raddr_seg {int dummy; } ;
struct mlx4_wqe_inline_seg {int dummy; } ;
struct mlx4_wqe_datagram_seg {int dummy; } ;
struct mlx4_wqe_data_seg {int dummy; } ;
struct mlx4_wqe_ctrl_seg {int dummy; } ;
struct mlx4_wqe_bind_seg {int dummy; } ;
struct mlx4_wqe_atomic_seg {int dummy; } ;
struct TYPE_2__ {int wqe_shift; } ;
struct mlx4_qp {TYPE_1__ sq; } ;
struct ibv_qp_cap {int max_send_sge; scalar_t__ max_inline_data; } ;
typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;






 int align (scalar_t__,int) ;
 int num_inline_segs (scalar_t__,int) ;

void mlx4_calc_sq_wqe_size(struct ibv_qp_cap *cap, enum ibv_qp_type type,
      struct mlx4_qp *qp)
{
 int size;
 int max_sq_sge;

 max_sq_sge = align(cap->max_inline_data +
     num_inline_segs(cap->max_inline_data, type) *
     sizeof (struct mlx4_wqe_inline_seg),
     sizeof (struct mlx4_wqe_data_seg)) /
  sizeof (struct mlx4_wqe_data_seg);
 if (max_sq_sge < cap->max_send_sge)
  max_sq_sge = cap->max_send_sge;

 size = max_sq_sge * sizeof (struct mlx4_wqe_data_seg);
 switch (type) {
 case 129:
  size += sizeof (struct mlx4_wqe_datagram_seg);
  break;

 case 130:
  size += sizeof (struct mlx4_wqe_raddr_seg);
  break;

 case 128:
 case 131:
  size += sizeof (struct mlx4_wqe_raddr_seg);




  if (size < (sizeof (struct mlx4_wqe_atomic_seg) +
       sizeof (struct mlx4_wqe_raddr_seg) +
       sizeof (struct mlx4_wqe_data_seg)))
   size = (sizeof (struct mlx4_wqe_atomic_seg) +
    sizeof (struct mlx4_wqe_raddr_seg) +
    sizeof (struct mlx4_wqe_data_seg));
  break;

 default:
  break;
 }


 if (size < sizeof (struct mlx4_wqe_bind_seg))
  size = sizeof (struct mlx4_wqe_bind_seg);

 size += sizeof (struct mlx4_wqe_ctrl_seg);

 for (qp->sq.wqe_shift = 6; 1 << qp->sq.wqe_shift < size;
      qp->sq.wqe_shift++)
  ;
}
