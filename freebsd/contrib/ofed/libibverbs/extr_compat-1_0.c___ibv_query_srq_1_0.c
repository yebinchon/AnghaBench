
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_attr {int dummy; } ;
struct ibv_srq_1_0 {int real_srq; } ;


 int ibv_query_srq (int ,struct ibv_srq_attr*) ;

int __ibv_query_srq_1_0(struct ibv_srq_1_0 *srq, struct ibv_srq_attr *srq_attr)
{
 return ibv_query_srq(srq->real_srq, srq_attr);
}
