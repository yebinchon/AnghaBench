
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ v_type; } ;
typedef TYPE_2__ vnode_t ;
struct TYPE_15__ {void* vs_aux; } ;
struct TYPE_17__ {char* vdev_path; int vdev_reopening; void* vdev_notrim; TYPE_4__* vdev_tsd; TYPE_1__ vdev_stat; int vdev_spa; void* vdev_nonrot; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_18__ {TYPE_2__* vf_vnode; } ;
typedef TYPE_4__ vdev_file_t ;
struct TYPE_19__ {int va_size; int va_mask; } ;
typedef TYPE_5__ vattr_t ;
typedef int uint64_t ;


 int ASSERT (int) ;
 int AT_SIZE ;
 void* B_TRUE ;
 int EINVAL ;
 int ENODEV ;
 int FOFFMAX ;
 int KM_SLEEP ;
 int LK_RETRY ;
 int LK_SHARED ;
 int SET_ERROR (int ) ;
 int SPA_MINBLOCKSHIFT ;
 int UIO_SYSSPACE ;
 void* VDEV_AUX_BAD_LABEL ;
 void* VDEV_AUX_OPEN_FAILED ;
 int VOP_CLOSE (TYPE_2__*,int,int,int ,int ,int *) ;
 int VOP_GETATTR (TYPE_2__*,TYPE_5__*,int ) ;
 int VOP_UNLOCK (TYPE_2__*,int ) ;
 scalar_t__ VREG ;
 int kcred ;
 int kmem_free (TYPE_4__*,int) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int rootdir ;
 int spa_mode (int ) ;
 int vn_lock (TYPE_2__*,int) ;
 int vn_openat (char*,int ,int,int ,TYPE_2__**,int ,int ,int ,int) ;

__attribute__((used)) static int
vdev_file_open(vdev_t *vd, uint64_t *psize, uint64_t *max_psize,
    uint64_t *logical_ashift, uint64_t *physical_ashift)
{
 vdev_file_t *vf;
 vnode_t *vp;
 vattr_t vattr;
 int error;


 vd->vdev_nonrot = B_TRUE;




 if (vd->vdev_path == ((void*)0) || vd->vdev_path[0] != '/') {
  vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
  return (SET_ERROR(EINVAL));
 }





 if (vd->vdev_tsd != ((void*)0)) {
  ASSERT(vd->vdev_reopening);
  vf = vd->vdev_tsd;
  vp = vf->vf_vnode;
  goto skip_open;
 }

 vf = vd->vdev_tsd = kmem_zalloc(sizeof (vdev_file_t), KM_SLEEP);







 ASSERT(vd->vdev_path != ((void*)0) && vd->vdev_path[0] == '/');
 error = vn_openat(vd->vdev_path + 1, UIO_SYSSPACE,
     spa_mode(vd->vdev_spa) | FOFFMAX, 0, &vp, 0, 0, rootdir, -1);

 if (error) {
  vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
  kmem_free(vd->vdev_tsd, sizeof (vdev_file_t));
  vd->vdev_tsd = ((void*)0);
  return (error);
 }

 vf->vf_vnode = vp;
skip_open:



 vattr.va_mask = AT_SIZE;
 vn_lock(vp, LK_SHARED | LK_RETRY);
 error = VOP_GETATTR(vp, &vattr, kcred);
 VOP_UNLOCK(vp, 0);
 if (error) {
  (void) VOP_CLOSE(vp, spa_mode(vd->vdev_spa), 1, 0, kcred, ((void*)0));
  vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
  kmem_free(vd->vdev_tsd, sizeof (vdev_file_t));
  vd->vdev_tsd = ((void*)0);
  return (error);
 }

 vd->vdev_notrim = B_TRUE;

 *max_psize = *psize = vattr.va_size;
 *logical_ashift = SPA_MINBLOCKSHIFT;
 *physical_ashift = SPA_MINBLOCKSHIFT;

 return (0);
}
