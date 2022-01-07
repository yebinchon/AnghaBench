
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int vdev_reopening; int * vdev_aux; int vdev_offline; TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_16__ {int spa_l2cache; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 int l2arc_add_vdev (TYPE_2__*,TYPE_1__*) ;
 int l2arc_vdev_present (TYPE_1__*) ;
 scalar_t__ spa_config_held (TYPE_2__*,scalar_t__,int ) ;
 int vdev_close (TYPE_1__*) ;
 int vdev_open (TYPE_1__*) ;
 int vdev_propagate_state (TYPE_1__*) ;
 scalar_t__ vdev_readable (TYPE_1__*) ;
 int vdev_validate (TYPE_1__*) ;
 int vdev_validate_aux (TYPE_1__*) ;
 scalar_t__ vdev_writeable (TYPE_1__*) ;

void
vdev_reopen(vdev_t *vd)
{
 spa_t *spa = vd->vdev_spa;

 ASSERT(spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);


 vd->vdev_reopening = !vd->vdev_offline;
 vdev_close(vd);
 (void) vdev_open(vd);






 if (vd->vdev_aux) {
  (void) vdev_validate_aux(vd);
  if (vdev_readable(vd) && vdev_writeable(vd) &&
      vd->vdev_aux == &spa->spa_l2cache &&
      !l2arc_vdev_present(vd))
   l2arc_add_vdev(spa, vd);
 } else {
  (void) vdev_validate(vd);
 }




 vdev_propagate_state(vd);
}
