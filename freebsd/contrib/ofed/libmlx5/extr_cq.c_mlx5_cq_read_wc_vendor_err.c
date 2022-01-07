
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_err_cqe {int vendor_err_synd; } ;
struct mlx5_cq {scalar_t__ cqe64; } ;
struct ibv_cq_ex {int dummy; } ;


 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct mlx5_cq* to_mcq (int ) ;

__attribute__((used)) static inline uint32_t mlx5_cq_read_wc_vendor_err(struct ibv_cq_ex *ibcq)
{
 struct mlx5_cq *cq = to_mcq(ibv_cq_ex_to_cq(ibcq));
 struct mlx5_err_cqe *ecqe = (struct mlx5_err_cqe *)cq->cqe64;

 return ecqe->vendor_err_synd;
}
