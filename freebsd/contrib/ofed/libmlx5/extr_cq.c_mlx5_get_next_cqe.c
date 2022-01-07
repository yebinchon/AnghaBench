
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_cqe64 {int dummy; } ;
struct TYPE_2__ {int context; } ;
struct mlx5_cq {int cqe_sz; int cqn; TYPE_1__ ibv_cq; int cons_index; } ;
struct mlx5_context {int * dbg_fp; } ;
typedef int FILE ;


 int CQ_EMPTY ;
 int CQ_OK ;
 int MLX5_DBG_CQ_CQE ;
 int VALGRIND_MAKE_MEM_DEFINED (struct mlx5_cqe64*,int) ;
 int dump_cqe (int *,struct mlx5_cqe64*) ;
 int mlx5_dbg (int *,int,char*,int ) ;
 int mlx5_debug_mask ;
 void* next_cqe_sw (struct mlx5_cq*) ;
 struct mlx5_context* to_mctx (int ) ;
 int udma_from_device_barrier () ;

__attribute__((used)) static inline int mlx5_get_next_cqe(struct mlx5_cq *cq,
        struct mlx5_cqe64 **pcqe64,
        void **pcqe)
{
 void *cqe;
 struct mlx5_cqe64 *cqe64;

 cqe = next_cqe_sw(cq);
 if (!cqe)
  return CQ_EMPTY;

 cqe64 = (cq->cqe_sz == 64) ? cqe : cqe + 64;

 ++cq->cons_index;

 VALGRIND_MAKE_MEM_DEFINED(cqe64, sizeof *cqe64);





 udma_from_device_barrier();
 *pcqe64 = cqe64;
 *pcqe = cqe;

 return CQ_OK;
}
