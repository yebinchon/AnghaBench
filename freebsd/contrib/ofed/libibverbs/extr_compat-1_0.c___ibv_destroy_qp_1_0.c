
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp_1_0 {int real_qp; } ;


 int free (struct ibv_qp_1_0*) ;
 int ibv_destroy_qp (int ) ;

int __ibv_destroy_qp_1_0(struct ibv_qp_1_0 *qp)
{
 int ret;

 ret = ibv_destroy_qp(qp->real_qp);
 if (ret)
  return ret;

 free(qp);
 return 0;
}
