
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_srq_init_attr_ex {int comp_mask; scalar_t__ srq_type; int pd; } ;
struct ibv_srq_init_attr {int dummy; } ;
struct ibv_srq {int dummy; } ;
struct ibv_context {int dummy; } ;


 scalar_t__ IBV_SRQT_BASIC ;
 scalar_t__ IBV_SRQT_XRC ;
 int IBV_SRQ_INIT_ATTR_TYPE ;
 struct ibv_srq* mlx4_create_srq (int ,struct ibv_srq_init_attr*) ;
 struct ibv_srq* mlx4_create_xrc_srq (struct ibv_context*,struct ibv_srq_init_attr_ex*) ;

struct ibv_srq *mlx4_create_srq_ex(struct ibv_context *context,
       struct ibv_srq_init_attr_ex *attr_ex)
{
 if (!(attr_ex->comp_mask & IBV_SRQ_INIT_ATTR_TYPE) ||
     (attr_ex->srq_type == IBV_SRQT_BASIC))
  return mlx4_create_srq(attr_ex->pd, (struct ibv_srq_init_attr *) attr_ex);
 else if (attr_ex->srq_type == IBV_SRQT_XRC)
  return mlx4_create_xrc_srq(context, attr_ex);

 return ((void*)0);
}
