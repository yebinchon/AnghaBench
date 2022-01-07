
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* z_vfs; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_10__ {int os_user_ptr_lock; } ;
typedef TYPE_3__ objset_t ;
typedef int boolean_t ;
struct TYPE_8__ {int mnt_kern_flag; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DMU_OST_ZFS ;
 int MNTK_UNMOUNT ;
 TYPE_2__* dmu_objset_get_user (TYPE_3__*) ;
 scalar_t__ dmu_objset_type (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

boolean_t
zfs_get_vfs_flag_unmounted(objset_t *os)
{
 zfsvfs_t *zfvp;
 boolean_t unmounted = B_FALSE;

 ASSERT(dmu_objset_type(os) == DMU_OST_ZFS);

 mutex_enter(&os->os_user_ptr_lock);
 zfvp = dmu_objset_get_user(os);
 if (zfvp != ((void*)0) && zfvp->z_vfs != ((void*)0) &&
     (zfvp->z_vfs->mnt_kern_flag & MNTK_UNMOUNT))
  unmounted = B_TRUE;
 mutex_exit(&os->os_user_ptr_lock);

 return (unmounted);
}
