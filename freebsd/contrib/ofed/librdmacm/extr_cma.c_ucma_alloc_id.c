
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_event_channel {int dummy; } ;
struct TYPE_2__ {int ps; int qp_type; struct rdma_event_channel* channel; void* context; } ;
struct cma_id_private {int handle; int sync; int cond; int mut; TYPE_1__ id; } ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;
typedef enum ibv_qp_type { ____Placeholder_ibv_qp_type } ibv_qp_type ;


 struct cma_id_private* calloc (int,int) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 struct rdma_event_channel* rdma_create_event_channel () ;
 int ucma_free_id (struct cma_id_private*) ;

__attribute__((used)) static struct cma_id_private *ucma_alloc_id(struct rdma_event_channel *channel,
         void *context,
         enum rdma_port_space ps,
         enum ibv_qp_type qp_type)
{
 struct cma_id_private *id_priv;

 id_priv = calloc(1, sizeof(*id_priv));
 if (!id_priv)
  return ((void*)0);

 id_priv->id.context = context;
 id_priv->id.ps = ps;
 id_priv->id.qp_type = qp_type;
 id_priv->handle = 0xFFFFFFFF;

 if (!channel) {
  id_priv->id.channel = rdma_create_event_channel();
  if (!id_priv->id.channel)
   goto err;
  id_priv->sync = 1;
 } else {
  id_priv->id.channel = channel;
 }

 pthread_mutex_init(&id_priv->mut, ((void*)0));
 if (pthread_cond_init(&id_priv->cond, ((void*)0)))
  goto err;

 return id_priv;

err: ucma_free_id(id_priv);
 return ((void*)0);
}
