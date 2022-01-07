
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * z_os; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_7__ {TYPE_1__* v_vfsp; } ;
typedef TYPE_3__ vnode_t ;
typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {scalar_t__ vfs_data; } ;


 int dmu_objset_ds (int *) ;
 int dsl_dataset_snap_lookup (int ,char const*,int *) ;

__attribute__((used)) static int
zfsctl_snapshot_lookup(vnode_t *vp, const char *name, uint64_t *id)
{
 objset_t *os = ((zfsvfs_t *)((vp)->v_vfsp->vfs_data))->z_os;
 int err;

 err = dsl_dataset_snap_lookup(dmu_objset_ds(os), name, id);
 return (err);
}
