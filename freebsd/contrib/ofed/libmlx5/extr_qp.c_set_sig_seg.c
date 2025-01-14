
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx5_rwqe_sig {int signature; } ;
typedef struct mlx5_rwqe_sig uint32_t ;
typedef struct mlx5_rwqe_sig uint16_t ;
struct mlx5_qp {TYPE_1__* ibv_qp; } ;
struct TYPE_2__ {struct mlx5_rwqe_sig qp_num; } ;


 int calc_sig (struct mlx5_rwqe_sig*,int) ;

__attribute__((used)) static void set_sig_seg(struct mlx5_qp *qp, struct mlx5_rwqe_sig *sig,
   int size, uint16_t idx)
{
 uint8_t sign;
 uint32_t qpn = qp->ibv_qp->qp_num;

 sign = calc_sig(sig, size);
 sign ^= calc_sig(&qpn, 4);
 sign ^= calc_sig(&idx, 2);
 sig->signature = sign;
}
