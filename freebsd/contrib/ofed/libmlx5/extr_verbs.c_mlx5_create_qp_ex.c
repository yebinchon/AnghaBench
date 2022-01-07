
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_qp_init_attr_ex {int dummy; } ;
struct ibv_qp {int dummy; } ;
struct ibv_context {int dummy; } ;


 struct ibv_qp* create_qp (struct ibv_context*,struct ibv_qp_init_attr_ex*) ;

struct ibv_qp *mlx5_create_qp_ex(struct ibv_context *context,
     struct ibv_qp_init_attr_ex *attr)
{
 return create_qp(context, attr);
}
