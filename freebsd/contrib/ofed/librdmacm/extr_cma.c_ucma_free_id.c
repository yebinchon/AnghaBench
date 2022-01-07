
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct cma_id_private* path_rec; } ;
struct TYPE_3__ {int channel; TYPE_2__ route; } ;
struct cma_id_private {struct cma_id_private* connect; scalar_t__ connect_len; TYPE_1__ id; scalar_t__ sync; int mut; int cond; scalar_t__ cma_dev; } ;


 int free (struct cma_id_private*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int rdma_destroy_event_channel (int ) ;
 int ucma_put_device (scalar_t__) ;
 int ucma_remove_id (struct cma_id_private*) ;

__attribute__((used)) static void ucma_free_id(struct cma_id_private *id_priv)
{
 ucma_remove_id(id_priv);
 if (id_priv->cma_dev)
  ucma_put_device(id_priv->cma_dev);
 pthread_cond_destroy(&id_priv->cond);
 pthread_mutex_destroy(&id_priv->mut);
 if (id_priv->id.route.path_rec)
  free(id_priv->id.route.path_rec);

 if (id_priv->sync)
  rdma_destroy_event_channel(id_priv->id.channel);
 if (id_priv->connect_len)
  free(id_priv->connect);
 free(id_priv);
}
