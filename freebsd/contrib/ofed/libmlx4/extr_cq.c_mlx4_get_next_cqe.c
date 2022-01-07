
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cqe {int dummy; } ;
struct mlx4_cq {int cqe_size; int cons_index; } ;


 int CQ_EMPTY ;
 int CQ_OK ;
 int VALGRIND_MAKE_MEM_DEFINED (struct mlx4_cqe*,int) ;
 struct mlx4_cqe* next_cqe_sw (struct mlx4_cq*) ;
 int udma_from_device_barrier () ;

__attribute__((used)) static inline int mlx4_get_next_cqe(struct mlx4_cq *cq,
        struct mlx4_cqe **pcqe)
{
 struct mlx4_cqe *cqe;

 cqe = next_cqe_sw(cq);
 if (!cqe)
  return CQ_EMPTY;

 if (cq->cqe_size == 64)
  ++cqe;

 ++cq->cons_index;

 VALGRIND_MAKE_MEM_DEFINED(cqe, sizeof *cqe);





 udma_from_device_barrier();

 *pcqe = cqe;

 return CQ_OK;
}
