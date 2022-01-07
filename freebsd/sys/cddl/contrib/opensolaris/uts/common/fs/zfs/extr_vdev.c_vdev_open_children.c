
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vdev_children; TYPE_4__** vdev_child; scalar_t__ vdev_nonrot; } ;
typedef TYPE_1__ vdev_t ;
typedef int taskq_t ;
struct TYPE_7__ {scalar_t__ vdev_nonrot; int vdev_open_error; } ;


 scalar_t__ B_TRUE ;
 int TASKQ_PREPOPULATE ;
 int TQ_SLEEP ;
 int VERIFY (int) ;
 int minclsyspri ;
 int * taskq_create (char*,int,int ,int,int,int ) ;
 int taskq_destroy (int *) ;
 scalar_t__ taskq_dispatch (int *,int ,TYPE_4__*,int ) ;
 int vdev_open (TYPE_4__*) ;
 int vdev_open_child ;
 scalar_t__ vdev_uses_zvols (TYPE_1__*) ;

void
vdev_open_children(vdev_t *vd)
{
 taskq_t *tq;
 int children = vd->vdev_children;

 vd->vdev_nonrot = B_TRUE;






 if (B_TRUE || vdev_uses_zvols(vd)) {
  for (int c = 0; c < children; c++) {
   vd->vdev_child[c]->vdev_open_error =
       vdev_open(vd->vdev_child[c]);
   vd->vdev_nonrot &= vd->vdev_child[c]->vdev_nonrot;
  }
  return;
 }
 tq = taskq_create("vdev_open", children, minclsyspri,
     children, children, TASKQ_PREPOPULATE);

 for (int c = 0; c < children; c++)
  VERIFY(taskq_dispatch(tq, vdev_open_child, vd->vdev_child[c],
      TQ_SLEEP) != 0);

 taskq_destroy(tq);

 for (int c = 0; c < children; c++)
  vd->vdev_nonrot &= vd->vdev_child[c]->vdev_nonrot;
}
