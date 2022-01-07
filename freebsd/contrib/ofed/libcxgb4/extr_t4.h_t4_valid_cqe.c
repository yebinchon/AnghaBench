
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_cqe {int dummy; } ;
struct t4_cq {scalar_t__ gen; } ;


 scalar_t__ CQE_GENBIT (struct t4_cqe*) ;

__attribute__((used)) static inline int t4_valid_cqe(struct t4_cq *cq, struct t4_cqe *cqe)
{
 return (CQE_GENBIT(cqe) == cq->gen);
}
