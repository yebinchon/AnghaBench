
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * vdev_ops; } ;
typedef TYPE_1__ vdev_t ;
typedef int uint64_t ;


 int metaslab_check_free_impl (TYPE_1__*,int ,int ) ;
 int vdev_indirect_ops ;

__attribute__((used)) static void
metaslab_check_free_impl_cb(uint64_t inner, vdev_t *vd, uint64_t offset,
    uint64_t size, void *arg)
{
 if (vd->vdev_ops == &vdev_indirect_ops)
  return;

 metaslab_check_free_impl(vd, offset, size);
}
