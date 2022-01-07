
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cma_multicast {TYPE_1__* id_priv; int cond; int events_completed; } ;
struct TYPE_2__ {int mut; int cond; int events_completed; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ucma_complete_mc_event(struct cma_multicast *mc)
{
 pthread_mutex_lock(&mc->id_priv->mut);
 mc->events_completed++;
 pthread_cond_signal(&mc->cond);
 mc->id_priv->events_completed++;
 pthread_cond_signal(&mc->id_priv->cond);
 pthread_mutex_unlock(&mc->id_priv->mut);
}
