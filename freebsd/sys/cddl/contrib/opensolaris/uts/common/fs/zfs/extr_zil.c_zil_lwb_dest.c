
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lwb_waiters; int lwb_vdev_tree; int lwb_vdev_lock; } ;
typedef TYPE_1__ lwb_t ;


 int avl_destroy (int *) ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
zil_lwb_dest(void *vbuf, void *unused)
{
 lwb_t *lwb = vbuf;
 mutex_destroy(&lwb->lwb_vdev_lock);
 avl_destroy(&lwb->lwb_vdev_tree);
 list_destroy(&lwb->lwb_waiters);
}
