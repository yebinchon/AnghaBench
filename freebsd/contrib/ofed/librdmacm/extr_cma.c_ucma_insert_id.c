
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_id_private {int handle; } ;


 int fastlock_acquire (int *) ;
 int fastlock_release (int *) ;
 int idm_lock ;
 int idm_set (int *,int ,struct cma_id_private*) ;
 int ucma_idm ;

__attribute__((used)) static void ucma_insert_id(struct cma_id_private *id_priv)
{
 fastlock_acquire(&idm_lock);
 idm_set(&ucma_idm, id_priv->handle, id_priv);
 fastlock_release(&idm_lock);
}
