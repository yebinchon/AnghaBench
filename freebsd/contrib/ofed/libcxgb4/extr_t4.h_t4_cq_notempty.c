
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cq {size_t cidx; int * queue; scalar_t__ sw_in_use; } ;


 scalar_t__ t4_valid_cqe (struct t4_cq*,int *) ;

__attribute__((used)) static inline int t4_cq_notempty(struct t4_cq *cq)
{
 return cq->sw_in_use || t4_valid_cqe(cq, &cq->queue[cq->cidx]);
}
