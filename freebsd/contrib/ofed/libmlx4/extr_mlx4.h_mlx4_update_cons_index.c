
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_cq {int cons_index; int * set_ci_db; } ;


 int htobe32 (int) ;

__attribute__((used)) static inline void mlx4_update_cons_index(struct mlx4_cq *cq)
{
 *cq->set_ci_db = htobe32(cq->cons_index & 0xffffff);
}
