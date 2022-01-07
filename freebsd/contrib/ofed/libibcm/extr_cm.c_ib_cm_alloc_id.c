
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_cm_device {int dummy; } ;
struct TYPE_2__ {void* context; struct ib_cm_device* device; } ;
struct cm_id_private {int cond; int mut; TYPE_1__ id; } ;


 int ib_cm_free_id (struct cm_id_private*) ;
 struct cm_id_private* malloc (int) ;
 int memset (struct cm_id_private*,int ,int) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static struct cm_id_private *ib_cm_alloc_id(struct ib_cm_device *device,
         void *context)
{
 struct cm_id_private *cm_id_priv;

 cm_id_priv = malloc(sizeof *cm_id_priv);
 if (!cm_id_priv)
  return ((void*)0);

 memset(cm_id_priv, 0, sizeof *cm_id_priv);
 cm_id_priv->id.device = device;
 cm_id_priv->id.context = context;
 pthread_mutex_init(&cm_id_priv->mut, ((void*)0));
 if (pthread_cond_init(&cm_id_priv->cond, ((void*)0)))
  goto err;

 return cm_id_priv;

err: ib_cm_free_id(cm_id_priv);
 return ((void*)0);
}
