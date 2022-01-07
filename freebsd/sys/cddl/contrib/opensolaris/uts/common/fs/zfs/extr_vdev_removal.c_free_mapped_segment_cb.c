
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vdev_t ;
typedef int uint64_t ;
typedef int boolean_t ;
struct TYPE_2__ {int (* vdev_op_remap ) (int *,int ,int ,int ,int *) ;} ;


 int B_FALSE ;
 int metaslab_free_impl_cb ;
 int stub1 (int *,int ,int ,int ,int *) ;
 int vdev_indirect_mark_obsolete (int *,int ,int ) ;
 TYPE_1__ vdev_indirect_ops ;

__attribute__((used)) static void
free_mapped_segment_cb(void *arg, uint64_t offset, uint64_t size)
{
 vdev_t *vd = arg;
 vdev_indirect_mark_obsolete(vd, offset, size);
 boolean_t checkpoint = B_FALSE;
 vdev_indirect_ops.vdev_op_remap(vd, offset, size,
     metaslab_free_impl_cb, &checkpoint);
}
