
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int vfs_t ;
struct TYPE_8__ {int os_user_ptr_lock; } ;
typedef TYPE_2__ objset_t ;


 scalar_t__ DMU_OST_ZFS ;
 int EINVAL ;
 int ESRCH ;
 int SET_ERROR (int ) ;
 TYPE_1__* dmu_objset_get_user (TYPE_2__*) ;
 scalar_t__ dmu_objset_type (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int vfs_ref (int *) ;

int
getzfsvfs_impl(objset_t *os, vfs_t **vfsp)
{
 zfsvfs_t *zfvp;
 int error = 0;

 if (dmu_objset_type(os) != DMU_OST_ZFS) {
  return (SET_ERROR(EINVAL));
 }

 mutex_enter(&os->os_user_ptr_lock);
 zfvp = dmu_objset_get_user(os);
 if (zfvp) {
  *vfsp = zfvp->z_vfs;
  vfs_ref(zfvp->z_vfs);
 } else {
  error = SET_ERROR(ESRCH);
 }
 mutex_exit(&os->os_user_ptr_lock);
 return (error);
}
