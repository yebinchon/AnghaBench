
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_1_0 {int real_srq; } ;


 int free (struct ibv_srq_1_0*) ;
 int ibv_destroy_srq (int ) ;

int __ibv_destroy_srq_1_0(struct ibv_srq_1_0 *srq)
{
 int ret;

 ret = ibv_destroy_srq(srq->real_srq);
 if (ret)
  return ret;

 free(srq);
 return 0;
}
