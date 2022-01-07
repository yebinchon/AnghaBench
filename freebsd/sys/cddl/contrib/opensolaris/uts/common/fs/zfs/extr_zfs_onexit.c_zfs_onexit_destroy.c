
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zo_lock; int zo_actions; int za_data; int (* za_func ) (int ) ;} ;
typedef TYPE_1__ zfs_onexit_t ;
typedef TYPE_1__ zfs_onexit_action_node_t ;


 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 TYPE_1__* list_head (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int stub1 (int ) ;

void
zfs_onexit_destroy(zfs_onexit_t *zo)
{
 zfs_onexit_action_node_t *ap;

 mutex_enter(&zo->zo_lock);
 while ((ap = list_head(&zo->zo_actions)) != ((void*)0)) {
  list_remove(&zo->zo_actions, ap);
  mutex_exit(&zo->zo_lock);
  ap->za_func(ap->za_data);
  kmem_free(ap, sizeof (zfs_onexit_action_node_t));
  mutex_enter(&zo->zo_lock);
 }
 mutex_exit(&zo->zo_lock);

 list_destroy(&zo->zo_actions);
 mutex_destroy(&zo->zo_lock);
 kmem_free(zo, sizeof (zfs_onexit_t));
}
