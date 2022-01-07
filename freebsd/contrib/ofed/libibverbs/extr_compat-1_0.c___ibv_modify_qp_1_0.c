
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp_attr {int dummy; } ;
struct ibv_qp_1_0 {int real_qp; } ;


 int ibv_modify_qp (int ,struct ibv_qp_attr*,int) ;

int __ibv_modify_qp_1_0(struct ibv_qp_1_0 *qp, struct ibv_qp_attr *attr,
   int attr_mask)
{
 return ibv_modify_qp(qp->real_qp, attr, attr_mask);
}
