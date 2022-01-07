
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx5_rwqe_sig {int signature; } ;
typedef struct mlx5_rwqe_sig uint32_t ;
typedef struct mlx5_rwqe_sig uint16_t ;
struct TYPE_2__ {struct mlx5_rwqe_sig wq_num; } ;
struct mlx5_rwq {TYPE_1__ wq; } ;


 int calc_sig (struct mlx5_rwqe_sig*,int) ;

__attribute__((used)) static void set_wq_sig_seg(struct mlx5_rwq *rwq, struct mlx5_rwqe_sig *sig,
      int size, uint16_t idx)
{
 uint8_t sign;
 uint32_t qpn = rwq->wq.wq_num;

 sign = calc_sig(sig, size);
 sign ^= calc_sig(&qpn, 4);
 sign ^= calc_sig(&idx, 2);
 sig->signature = sign;
}
