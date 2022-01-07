
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_prop_t ;
typedef int vfs_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dsl_dataset_t ;


 int ENOENT ;
 int MNTOPT_ATIME ;
 int MNTOPT_DEVICES ;
 int MNTOPT_EXEC ;
 int MNTOPT_NBMAND ;
 int MNTOPT_NOATIME ;
 int MNTOPT_NODEVICES ;
 int MNTOPT_NOEXEC ;
 int MNTOPT_NONBMAND ;
 int MNTOPT_NOSETUID ;
 int MNTOPT_NOXATTR ;
 int MNTOPT_RO ;
 int MNTOPT_RW ;
 int MNTOPT_SETUID ;
 int MNTOPT_XATTR ;
 int VFS_RELE (int *) ;







 int dmu_objset_from_ds (int *,int **) ;
 int getzfsvfs_impl (int *,int **) ;
 int strcpy (char*,char*) ;
 int vfs_optionisset (int *,int ,int *) ;
 int vfs_rel (int *) ;

__attribute__((used)) static int
get_temporary_prop(dsl_dataset_t *ds, zfs_prop_t zfs_prop, uint64_t *val,
    char *setpoint)
{

 return (0);
}
