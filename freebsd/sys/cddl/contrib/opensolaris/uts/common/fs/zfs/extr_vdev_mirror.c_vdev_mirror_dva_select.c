
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* io_vsd; TYPE_1__* io_bp; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_7__ {int* mm_preferred; } ;
typedef TYPE_3__ mirror_map_t ;
typedef int dva_t ;
struct TYPE_5__ {int * blk_dva; } ;


 scalar_t__ DVA_GET_VDEV (int *) ;

__attribute__((used)) static int
vdev_mirror_dva_select(zio_t *zio, int p)
{
 dva_t *dva = zio->io_bp->blk_dva;
 mirror_map_t *mm = zio->io_vsd;
 int preferred;
 int c;

 preferred = mm->mm_preferred[p];
 for (p-- ; p >= 0; p--) {
  c = mm->mm_preferred[p];
  if (DVA_GET_VDEV(&dva[c]) == DVA_GET_VDEV(&dva[preferred]))
   preferred = c;
 }
 return (preferred);
}
