
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {scalar_t__ xrcd; int pd; int refcnt; } ;


 int ibv_close_xrcd (scalar_t__) ;
 int ibv_dealloc_pd (int ) ;
 int mut ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ucma_put_device(struct cma_device *cma_dev)
{
 pthread_mutex_lock(&mut);
 if (!--cma_dev->refcnt) {
  ibv_dealloc_pd(cma_dev->pd);
  if (cma_dev->xrcd)
   ibv_close_xrcd(cma_dev->xrcd);
 }
 pthread_mutex_unlock(&mut);
}
