
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_bad_cksum_t ;
typedef int zfs_ecksum_info_t ;
typedef int vdev_t ;
typedef int uint64_t ;
struct zio {int dummy; } ;
typedef int spa_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int EVCH_SLEEP ;
 int FM_EREPORT_ZFS_CHECKSUM ;
 int FM_NVA_FREE ;
 int * annotate_ecksum (int *,int *,void const*,void const*,int ,int ) ;
 int fm_ereport_post (int *,int ) ;
 int fm_nvlist_destroy (int *,int ) ;
 int kmem_free (int *,int) ;
 int zfs_ereport_start (int **,int **,int ,int *,int *,struct zio*,int ,int ) ;

void
zfs_ereport_post_checksum(spa_t *spa, vdev_t *vd,
    struct zio *zio, uint64_t offset, uint64_t length,
    const void *good_data, const void *bad_data, zio_bad_cksum_t *zbc)
{
}
