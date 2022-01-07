
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mlx5_wqe_raddr_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int addr; } ;
struct mlx5_wqe_ctrl_seg {int dummy; } ;
struct mlx5_wqe_atomic_seg {int dummy; } ;
struct mlx5_qp {int dummy; } ;


 scalar_t__ be64toh (int ) ;
 struct mlx5_wqe_data_seg* mlx5_get_send_wqe (struct mlx5_qp*,int ) ;

void *mlx5_get_atomic_laddr(struct mlx5_qp *qp, uint16_t idx, int *byte_count)
{
 struct mlx5_wqe_data_seg *dpseg;
 void *addr;

 dpseg = mlx5_get_send_wqe(qp, idx) + sizeof(struct mlx5_wqe_ctrl_seg) +
  sizeof(struct mlx5_wqe_raddr_seg) +
  sizeof(struct mlx5_wqe_atomic_seg);
 addr = (void *)(unsigned long)be64toh(dpseg->addr);





 *byte_count = 8;
 return addr;
}
