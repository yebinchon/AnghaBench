
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdev_t ;
struct TYPE_5__ {int * spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;


 int EIO ;
 int VDEV_AUX_CORRUPT_DATA ;
 int ddt_load (TYPE_1__*) ;
 int spa_load_failed (TYPE_1__*,char*,int) ;
 int spa_vdev_err (int *,int ,int ) ;

__attribute__((used)) static int
spa_ld_load_dedup_tables(spa_t *spa)
{
 int error = 0;
 vdev_t *rvd = spa->spa_root_vdev;

 error = ddt_load(spa);
 if (error != 0) {
  spa_load_failed(spa, "ddt_load failed [error=%d]", error);
  return (spa_vdev_err(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
 }

 return (0);
}
