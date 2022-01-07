
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* vdev_tsd; int vdev_delayed_close; int vdev_spa; scalar_t__ vdev_reopening; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_6__ {int * vf_vnode; } ;
typedef TYPE_2__ vdev_file_t ;


 int B_FALSE ;
 int VOP_CLOSE (int *,int ,int,int ,int ,int *) ;
 int kcred ;
 int kmem_free (TYPE_2__*,int) ;
 int spa_mode (int ) ;

__attribute__((used)) static void
vdev_file_close(vdev_t *vd)
{
 vdev_file_t *vf = vd->vdev_tsd;

 if (vd->vdev_reopening || vf == ((void*)0))
  return;

 if (vf->vf_vnode != ((void*)0)) {
  (void) VOP_CLOSE(vf->vf_vnode, spa_mode(vd->vdev_spa), 1, 0,
      kcred, ((void*)0));
 }

 vd->vdev_delayed_close = B_FALSE;
 kmem_free(vf, sizeof (vdev_file_t));
 vd->vdev_tsd = ((void*)0);
}
