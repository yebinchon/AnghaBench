
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx4_wqe_ctrl_seg {int fence_size; } ;
struct mlx4_qp {int dummy; } ;


 int* get_send_wqe (struct mlx4_qp*,int) ;

__attribute__((used)) static void stamp_send_wqe(struct mlx4_qp *qp, int n)
{
 uint32_t *wqe = get_send_wqe(qp, n);
 int i;
 int ds = (((struct mlx4_wqe_ctrl_seg *)wqe)->fence_size & 0x3f) << 2;

 for (i = 16; i < ds; i += 16)
  wqe[i] = 0xffffffff;
}
