
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_attr {int dummy; } ;
struct ibv_srq_1_0 {int real_srq; } ;


 int ibv_modify_srq (int ,struct ibv_srq_attr*,int) ;

int __ibv_modify_srq_1_0(struct ibv_srq_1_0 *srq,
    struct ibv_srq_attr *srq_attr,
    int srq_attr_mask)
{
 return ibv_modify_srq(srq->real_srq, srq_attr, srq_attr_mask);
}
