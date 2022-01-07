
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_id_private {int mut; int cond; int events_completed; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ucma_complete_event(struct cma_id_private *id_priv)
{
 pthread_mutex_lock(&id_priv->mut);
 id_priv->events_completed++;
 pthread_cond_signal(&id_priv->cond);
 pthread_mutex_unlock(&id_priv->mut);
}
