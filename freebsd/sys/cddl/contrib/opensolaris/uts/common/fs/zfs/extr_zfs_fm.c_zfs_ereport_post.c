
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int EVCH_SLEEP ;
 int FM_NVA_FREE ;
 int fm_ereport_post (int *,int ) ;
 int fm_nvlist_destroy (int *,int ) ;
 int zfs_ereport_start (int **,int **,char const*,int *,int *,int *,int ,int ) ;

void
zfs_ereport_post(const char *subclass, spa_t *spa, vdev_t *vd, zio_t *zio,
    uint64_t stateoroffset, uint64_t size)
{
}
