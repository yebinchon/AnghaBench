
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zo_lock; int zo_actions; } ;
typedef TYPE_1__ zfs_onexit_t ;
struct TYPE_7__ {void (* za_func ) (void*) ;void* za_data; int za_link; } ;
typedef TYPE_2__ zfs_onexit_action_node_t ;
typedef scalar_t__ uint64_t ;
typedef int minor_t ;


 int KM_SLEEP ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int list_insert_tail (int *,TYPE_2__*) ;
 int list_link_init (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_onexit_minor_to_state (int ,TYPE_1__**) ;

int
zfs_onexit_add_cb(minor_t minor, void (*func)(void *), void *data,
    uint64_t *action_handle)
{
 zfs_onexit_t *zo;
 zfs_onexit_action_node_t *ap;
 int error;

 error = zfs_onexit_minor_to_state(minor, &zo);
 if (error)
  return (error);

 ap = kmem_alloc(sizeof (zfs_onexit_action_node_t), KM_SLEEP);
 list_link_init(&ap->za_link);
 ap->za_func = func;
 ap->za_data = data;

 mutex_enter(&zo->zo_lock);
 list_insert_tail(&zo->zo_actions, ap);
 mutex_exit(&zo->zo_lock);
 if (action_handle)
  *action_handle = (uint64_t)(uintptr_t)ap;

 return (0);
}
