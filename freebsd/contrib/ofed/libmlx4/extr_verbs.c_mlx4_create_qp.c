
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp_init_attr_ex {struct ibv_pd* pd; int comp_mask; } ;
struct ibv_qp_init_attr {struct ibv_pd* pd; int comp_mask; } ;
struct ibv_qp {int dummy; } ;
struct ibv_pd {int context; } ;


 int IBV_QP_INIT_ATTR_PD ;
 int memcpy (struct ibv_qp_init_attr_ex*,struct ibv_qp_init_attr_ex*,int) ;
 struct ibv_qp* mlx4_create_qp_ex (int ,struct ibv_qp_init_attr_ex*) ;

struct ibv_qp *mlx4_create_qp(struct ibv_pd *pd, struct ibv_qp_init_attr *attr)
{
 struct ibv_qp_init_attr_ex attr_ex;
 struct ibv_qp *qp;

 memcpy(&attr_ex, attr, sizeof *attr);
 attr_ex.comp_mask = IBV_QP_INIT_ATTR_PD;
 attr_ex.pd = pd;
 qp = mlx4_create_qp_ex(pd->context, &attr_ex);
 if (qp)
  memcpy(attr, &attr_ex, sizeof *attr);
 return qp;
}
