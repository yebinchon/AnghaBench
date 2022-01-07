
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct c4iw_dev {struct c4iw_cq** cqid2ptr; } ;
struct c4iw_cq {int dummy; } ;



__attribute__((used)) static inline struct c4iw_cq *get_chp(struct c4iw_dev *rhp, u32 qid)
{
 return rhp->cqid2ptr[qid];
}
