
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ v_state; int (* v_read ) (TYPE_1__*,int const*,void*,int ,size_t) ;int v_children; } ;
typedef TYPE_1__ vdev_t ;
typedef int off_t ;
typedef int blkptr_t ;


 int EIO ;
 TYPE_1__* STAILQ_FIRST (int *) ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 int stub1 (TYPE_1__*,int const*,void*,int ,size_t) ;

__attribute__((used)) static int
vdev_replacing_read(vdev_t *vdev, const blkptr_t *bp, void *buf,
    off_t offset, size_t bytes)
{
 vdev_t *kid;
 kid = STAILQ_FIRST(&vdev->v_children);
 if (kid == ((void*)0))
  return (EIO);
 if (kid->v_state != VDEV_STATE_HEALTHY)
  return (EIO);
 return (kid->v_read(kid, bp, buf, offset, bytes));
}
