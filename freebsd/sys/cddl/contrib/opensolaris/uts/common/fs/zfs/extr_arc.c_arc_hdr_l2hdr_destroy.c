
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {int l2ad_alloc; int l2ad_vdev; int l2ad_buflist; int l2ad_mtx; } ;
typedef TYPE_1__ l2arc_dev_t ;
struct TYPE_12__ {TYPE_1__* b_dev; } ;
typedef TYPE_2__ l2arc_buf_hdr_t ;
struct TYPE_13__ {TYPE_2__ b_l2hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;


 int ARCSTAT_INCR (int ,int ) ;
 int ARC_FLAG_HAS_L2HDR ;
 int ASSERT (int ) ;
 int HDR_GET_LSIZE (TYPE_3__*) ;
 int HDR_HAS_L2HDR (TYPE_3__*) ;
 int MUTEX_HELD (int *) ;
 int arc_hdr_clear_flags (TYPE_3__*,int ) ;
 int arc_hdr_size (TYPE_3__*) ;
 int arcstat_l2_lsize ;
 int arcstat_l2_psize ;
 int list_remove (int *,TYPE_3__*) ;
 int vdev_space_update (int ,int ,int ,int ) ;
 int zfs_refcount_remove_many (int *,int ,TYPE_3__*) ;

__attribute__((used)) static void
arc_hdr_l2hdr_destroy(arc_buf_hdr_t *hdr)
{
 l2arc_buf_hdr_t *l2hdr = &hdr->b_l2hdr;
 l2arc_dev_t *dev = l2hdr->b_dev;
 uint64_t psize = arc_hdr_size(hdr);

 ASSERT(MUTEX_HELD(&dev->l2ad_mtx));
 ASSERT(HDR_HAS_L2HDR(hdr));

 list_remove(&dev->l2ad_buflist, hdr);

 ARCSTAT_INCR(arcstat_l2_psize, -psize);
 ARCSTAT_INCR(arcstat_l2_lsize, -HDR_GET_LSIZE(hdr));

 vdev_space_update(dev->l2ad_vdev, -psize, 0, 0);

 (void) zfs_refcount_remove_many(&dev->l2ad_alloc, psize, hdr);
 arc_hdr_clear_flags(hdr, ARC_FLAG_HAS_L2HDR);
}
