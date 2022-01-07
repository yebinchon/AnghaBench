
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_6__ {scalar_t__ spa_load_state; int spa_l2cache; int spa_spares; int * spa_root_vdev; scalar_t__ spa_autoreplace; } ;
typedef TYPE_1__ spa_t ;


 int B_FALSE ;
 int FTAG ;
 int RW_WRITER ;
 int SCL_ALL ;
 scalar_t__ SPA_LOAD_IMPORT ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 int VDEV_AUX_CORRUPT_DATA ;
 int spa_aux_check_removed (int *) ;
 int spa_check_removed (int *) ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int spa_load_failed (TYPE_1__*,char*,int) ;
 int spa_vdev_err (int *,int ,int) ;
 int vdev_dtl_reassess (int *,int ,int ,int ) ;
 int vdev_load (int *) ;

__attribute__((used)) static int
spa_ld_load_vdev_metadata(spa_t *spa)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;
 if (spa->spa_autoreplace && spa->spa_load_state != SPA_LOAD_TRYIMPORT) {
  spa_check_removed(spa->spa_root_vdev);





  if (spa->spa_load_state != SPA_LOAD_IMPORT) {
   spa_aux_check_removed(&spa->spa_spares);
   spa_aux_check_removed(&spa->spa_l2cache);
  }
 }




 error = vdev_load(rvd);
 if (error != 0) {
  spa_load_failed(spa, "vdev_load failed [error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, error));
 }




 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 vdev_dtl_reassess(rvd, 0, 0, B_FALSE);
 spa_config_exit(spa, SCL_ALL, FTAG);

 return (0);
}
