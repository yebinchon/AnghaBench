
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_1_0 {int real_cq; } ;


 int free (struct ibv_cq_1_0*) ;
 int ibv_destroy_cq (int ) ;

int __ibv_destroy_cq_1_0(struct ibv_cq_1_0 *cq)
{
 int ret;

 ret = ibv_destroy_cq(cq->real_cq);
 if (ret)
  return ret;

 free(cq);
 return 0;
}
