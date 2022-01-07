
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vs_aux; } ;
struct TYPE_7__ {scalar_t__ vdev_children; int vdev_open_error; TYPE_1__ vdev_stat; int vdev_islog; struct TYPE_7__** vdev_child; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_LOAD_NONE ;
 int VDEV_AUX_BAD_LABEL ;
 int VDEV_AUX_NO_REPLICAS ;
 scalar_t__ spa_load_state (int *) ;
 int spa_set_missing_tvds (int *,int) ;
 scalar_t__ too_many_errors (TYPE_2__*,int) ;
 int vdev_open_children (TYPE_2__*) ;

__attribute__((used)) static int
vdev_root_open(vdev_t *vd, uint64_t *asize, uint64_t *max_asize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{
 spa_t *spa = vd->vdev_spa;
 int lasterror = 0;
 int numerrors = 0;

 if (vd->vdev_children == 0) {
  vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
  return (SET_ERROR(EINVAL));
 }

 vdev_open_children(vd);

 for (int c = 0; c < vd->vdev_children; c++) {
  vdev_t *cvd = vd->vdev_child[c];

  if (cvd->vdev_open_error && !cvd->vdev_islog) {
   lasterror = cvd->vdev_open_error;
   numerrors++;
  }
 }

 if (spa_load_state(spa) != SPA_LOAD_NONE)
  spa_set_missing_tvds(spa, numerrors);

 if (too_many_errors(vd, numerrors)) {
  vd->vdev_stat.vs_aux = VDEV_AUX_NO_REPLICAS;
  return (lasterror);
 }

 *asize = 0;
 *max_asize = 0;
 *logical_ashift = 0;
 *physical_ashift = 0;

 return (0);
}
