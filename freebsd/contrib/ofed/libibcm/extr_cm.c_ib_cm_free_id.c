
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_id_private {int mut; int cond; } ;


 int free (struct cm_id_private*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void ib_cm_free_id(struct cm_id_private *cm_id_priv)
{
 pthread_cond_destroy(&cm_id_priv->cond);
 pthread_mutex_destroy(&cm_id_priv->mut);
 free(cm_id_priv);
}
