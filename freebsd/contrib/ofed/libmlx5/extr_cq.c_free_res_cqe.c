
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mlx5_srq {int dummy; } ;
struct mlx5_cqe64 {int wqe_counter; int srqn_uidx; } ;


 int be16toh (int ) ;
 int be32toh (int ) ;
 scalar_t__ is_equal_rsn (struct mlx5_cqe64*,int ) ;
 scalar_t__ is_equal_uidx (struct mlx5_cqe64*,int ) ;
 scalar_t__ is_responder (int ) ;
 int mlx5_free_srq_wqe (struct mlx5_srq*,int ) ;
 int mlx5dv_get_cqe_opcode (struct mlx5_cqe64*) ;

__attribute__((used)) static inline int free_res_cqe(struct mlx5_cqe64 *cqe64, uint32_t rsn,
          struct mlx5_srq *srq, int cqe_version)
{
 if (cqe_version) {
  if (is_equal_uidx(cqe64, rsn)) {
   if (srq && is_responder(mlx5dv_get_cqe_opcode(cqe64)))
    mlx5_free_srq_wqe(srq,
        be16toh(cqe64->wqe_counter));
   return 1;
  }
 } else {
  if (is_equal_rsn(cqe64, rsn)) {
   if (srq && (be32toh(cqe64->srqn_uidx) & 0xffffff))
    mlx5_free_srq_wqe(srq,
        be16toh(cqe64->wqe_counter));
   return 1;
  }
 }

 return 0;
}
