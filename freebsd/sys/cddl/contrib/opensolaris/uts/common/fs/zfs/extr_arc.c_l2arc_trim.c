
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int l2ad_vdev; int l2ad_mtx; } ;
typedef TYPE_2__ l2arc_dev_t ;
struct TYPE_7__ {int b_daddr; TYPE_2__* b_dev; } ;
struct TYPE_9__ {TYPE_1__ b_l2hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;


 int ASSERT (int ) ;
 scalar_t__ HDR_GET_PSIZE (TYPE_3__ const*) ;
 int HDR_HAS_L2HDR (TYPE_3__ const*) ;
 int MUTEX_HELD (int *) ;
 int trim_map_free (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void
l2arc_trim(const arc_buf_hdr_t *hdr)
{
 l2arc_dev_t *dev = hdr->b_l2hdr.b_dev;

 ASSERT(HDR_HAS_L2HDR(hdr));
 ASSERT(MUTEX_HELD(&dev->l2ad_mtx));

 if (HDR_GET_PSIZE(hdr) != 0) {
  trim_map_free(dev->l2ad_vdev, hdr->b_l2hdr.b_daddr,
      HDR_GET_PSIZE(hdr), 0);
 }
}
