
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pd; int verbs; } ;
struct cma_id_private {TYPE_1__ id; struct cma_device* cma_dev; } ;
struct cma_device {scalar_t__ guid; scalar_t__ pd; int verbs; int refcnt; } ;
typedef scalar_t__ __be64 ;


 int ENODEV ;
 int ENOMEM ;
 int ERR (int ) ;
 struct cma_device* cma_dev_array ;
 int cma_dev_cnt ;
 scalar_t__ ibv_alloc_pd (int ) ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int ucma_init_device (struct cma_device*) ;

__attribute__((used)) static int ucma_get_device(struct cma_id_private *id_priv, __be64 guid)
{
 struct cma_device *cma_dev;
 int i, ret;

 for (i = 0; i < cma_dev_cnt; i++) {
  cma_dev = &cma_dev_array[i];
  if (cma_dev->guid == guid)
   goto match;
 }

 return ERR(ENODEV);
match:
 pthread_mutex_lock(&mut);
 if ((ret = ucma_init_device(cma_dev)))
  goto out;

 if (!cma_dev->refcnt++) {
  cma_dev->pd = ibv_alloc_pd(cma_dev->verbs);
  if (!cma_dev->pd) {
   cma_dev->refcnt--;
   ret = ERR(ENOMEM);
   goto out;
  }
 }
 id_priv->cma_dev = cma_dev;
 id_priv->id.verbs = cma_dev->verbs;
 id_priv->id.pd = cma_dev->pd;
out:
 pthread_mutex_unlock(&mut);
 return ret;
}
