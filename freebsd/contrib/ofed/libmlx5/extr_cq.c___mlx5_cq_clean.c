
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mlx5_srq {int dummy; } ;
struct mlx5_cqe64 {int op_own; } ;
struct TYPE_3__ {int cqe; int context; } ;
struct mlx5_cq {int flags; int cons_index; int cqe_sz; TYPE_1__ ibv_cq; } ;
struct TYPE_4__ {int cqe_version; } ;


 int MLX5_CQE_OWNER_MASK ;
 int MLX5_CQ_FLAGS_DV_OWNED ;
 scalar_t__ free_res_cqe (struct mlx5_cqe64*,int,struct mlx5_srq*,int) ;
 void* get_cqe (struct mlx5_cq*,int) ;
 scalar_t__ get_sw_cqe (struct mlx5_cq*,int) ;
 int memcpy (void*,void*,int) ;
 TYPE_2__* to_mctx (int ) ;
 int udma_to_device_barrier () ;
 int update_cons_index (struct mlx5_cq*) ;

void __mlx5_cq_clean(struct mlx5_cq *cq, uint32_t rsn, struct mlx5_srq *srq)
{
 uint32_t prod_index;
 int nfreed = 0;
 struct mlx5_cqe64 *cqe64, *dest64;
 void *cqe, *dest;
 uint8_t owner_bit;
 int cqe_version;

 if (!cq || cq->flags & MLX5_CQ_FLAGS_DV_OWNED)
  return;
 for (prod_index = cq->cons_index; get_sw_cqe(cq, prod_index); ++prod_index)
  if (prod_index == cq->cons_index + cq->ibv_cq.cqe)
   break;





 cqe_version = (to_mctx(cq->ibv_cq.context))->cqe_version;
 while ((int) --prod_index - (int) cq->cons_index >= 0) {
  cqe = get_cqe(cq, prod_index & cq->ibv_cq.cqe);
  cqe64 = (cq->cqe_sz == 64) ? cqe : cqe + 64;
  if (free_res_cqe(cqe64, rsn, srq, cqe_version)) {
   ++nfreed;
  } else if (nfreed) {
   dest = get_cqe(cq, (prod_index + nfreed) & cq->ibv_cq.cqe);
   dest64 = (cq->cqe_sz == 64) ? dest : dest + 64;
   owner_bit = dest64->op_own & MLX5_CQE_OWNER_MASK;
   memcpy(dest, cqe, cq->cqe_sz);
   dest64->op_own = owner_bit |
    (dest64->op_own & ~MLX5_CQE_OWNER_MASK);
  }
 }

 if (nfreed) {
  cq->cons_index += nfreed;




  udma_to_device_barrier();
  update_cons_index(cq);
 }
}
