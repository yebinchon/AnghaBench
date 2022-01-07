
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct verbs_context {TYPE_1__* priv; } ;
struct ibv_cq_init_attr_ex {int wc_flags; int cq_context; int channel; } ;
struct ibv_cq_ex {int dummy; } ;
struct ibv_context {int dummy; } ;
struct TYPE_2__ {struct ibv_cq_ex* (* create_cq_ex ) (struct ibv_context*,struct ibv_cq_init_attr_ex*) ;} ;


 int EOPNOTSUPP ;
 int IBV_CREATE_CQ_SUP_WC_FLAGS ;
 int errno ;
 int ibv_cq_ex_to_cq (struct ibv_cq_ex*) ;
 struct ibv_cq_ex* stub1 (struct ibv_context*,struct ibv_cq_init_attr_ex*) ;
 struct verbs_context* verbs_get_ctx (struct ibv_context*) ;
 int verbs_init_cq (int ,struct ibv_context*,int ,int ) ;

__attribute__((used)) static struct ibv_cq_ex *
__lib_ibv_create_cq_ex(struct ibv_context *context,
         struct ibv_cq_init_attr_ex *cq_attr)
{
 struct verbs_context *vctx = verbs_get_ctx(context);
 struct ibv_cq_ex *cq;

 if (cq_attr->wc_flags & ~IBV_CREATE_CQ_SUP_WC_FLAGS) {
  errno = EOPNOTSUPP;
  return ((void*)0);
 }

 cq = vctx->priv->create_cq_ex(context, cq_attr);

 if (cq)
  verbs_init_cq(ibv_cq_ex_to_cq(cq), context,
           cq_attr->channel, cq_attr->cq_context);

 return cq;
}
