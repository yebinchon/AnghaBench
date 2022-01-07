
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* vdev_ops; int vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_10__ {scalar_t__ mcca_error; int mcca_txg; } ;
typedef TYPE_3__ metaslab_claim_cb_arg_t ;
struct TYPE_8__ {int (* vdev_op_remap ) (TYPE_2__*,int ,int ,int ,TYPE_3__*) ;} ;


 int ASSERT (int) ;
 int metaslab_claim_concrete (TYPE_2__*,int ,int ,int ) ;
 int metaslab_claim_impl_cb ;
 int spa_writeable (int ) ;
 int stub1 (TYPE_2__*,int ,int ,int ,TYPE_3__*) ;

int
metaslab_claim_impl(vdev_t *vd, uint64_t offset, uint64_t size, uint64_t txg)
{
 if (vd->vdev_ops->vdev_op_remap != ((void*)0)) {
  metaslab_claim_cb_arg_t arg;






  ASSERT(!spa_writeable(vd->vdev_spa));
  arg.mcca_error = 0;
  arg.mcca_txg = txg;

  vd->vdev_ops->vdev_op_remap(vd, offset, size,
      metaslab_claim_impl_cb, &arg);

  if (arg.mcca_error == 0) {
   arg.mcca_error = metaslab_claim_concrete(vd,
       offset, size, txg);
  }
  return (arg.mcca_error);
 } else {
  return (metaslab_claim_concrete(vd, offset, size, txg));
 }
}
