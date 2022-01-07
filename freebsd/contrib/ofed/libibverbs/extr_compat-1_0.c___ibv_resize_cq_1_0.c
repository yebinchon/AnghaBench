
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_1_0 {int real_cq; } ;


 int ibv_resize_cq (int ,int) ;

int __ibv_resize_cq_1_0(struct ibv_cq_1_0 *cq, int cqe)
{
 return ibv_resize_cq(cq->real_cq, cqe);
}
