
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp_init_attr_ex {struct ibv_pd* pd; int comp_mask; } ;
struct ibv_qp_init_attr {struct ibv_pd* pd; int comp_mask; } ;
struct ibv_qp {int dummy; } ;
struct ibv_pd {int context; } ;
typedef int attrx ;


 int IBV_QP_INIT_ATTR_PD ;
 struct ibv_qp* create_qp (int ,struct ibv_qp_init_attr_ex*) ;
 int memcpy (struct ibv_qp_init_attr_ex*,struct ibv_qp_init_attr_ex*,int) ;
 int memset (struct ibv_qp_init_attr_ex*,int ,int) ;

struct ibv_qp *mlx5_create_qp(struct ibv_pd *pd,
         struct ibv_qp_init_attr *attr)
{
 struct ibv_qp *qp;
 struct ibv_qp_init_attr_ex attrx;

 memset(&attrx, 0, sizeof(attrx));
 memcpy(&attrx, attr, sizeof(*attr));
 attrx.comp_mask = IBV_QP_INIT_ATTR_PD;
 attrx.pd = pd;
 qp = create_qp(pd->context, &attrx);
 if (qp)
  memcpy(attr, &attrx, sizeof(*attr));

 return qp;
}
