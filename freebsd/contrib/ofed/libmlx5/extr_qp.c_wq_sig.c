
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mlx5_wqe_ctrl_seg {int qpn_ds; } ;


 int be32toh (int ) ;
 int calc_sig (struct mlx5_wqe_ctrl_seg*,int ) ;

__attribute__((used)) static uint8_t wq_sig(struct mlx5_wqe_ctrl_seg *ctrl)
{
 return calc_sig(ctrl, be32toh(ctrl->qpn_ds));
}
