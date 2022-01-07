
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_wqe_raddr_seg {int dummy; } ;
struct mlx4_wqe_inline_seg {int dummy; } ;
struct mlx4_wqe_datagram_seg {int dummy; } ;
struct mlx4_wqe_ctrl_seg {int dummy; } ;
typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;


 int IBV_QPT_UD ;
 int MLX4_INLINE_ALIGN ;

__attribute__((used)) static int num_inline_segs(int data, enum ibv_qp_type type)
{
 if (type == IBV_QPT_UD)
  data += (sizeof (struct mlx4_wqe_ctrl_seg) +
    sizeof (struct mlx4_wqe_datagram_seg)) %
   MLX4_INLINE_ALIGN;
 else
  data += (sizeof (struct mlx4_wqe_ctrl_seg) +
    sizeof (struct mlx4_wqe_raddr_seg)) %
   MLX4_INLINE_ALIGN;

 return (data + MLX4_INLINE_ALIGN - sizeof (struct mlx4_wqe_inline_seg) - 1) /
  (MLX4_INLINE_ALIGN - sizeof (struct mlx4_wqe_inline_seg));
}
