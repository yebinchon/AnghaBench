
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_offset; } ;
typedef TYPE_1__ zio_t ;


 int AVL_CMP (int ,int ) ;
 int AVL_PCMP (TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ likely (int) ;

int
vdev_queue_offset_compare(const void *x1, const void *x2)
{
 const zio_t *z1 = (const zio_t *)x1;
 const zio_t *z2 = (const zio_t *)x2;

 int cmp = AVL_CMP(z1->io_offset, z2->io_offset);

 if (likely(cmp))
  return (cmp);

 return (AVL_PCMP(z1, z2));
}
