
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* z_ctldir; int z_vfs; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_7__ {int cmtime; int * snapdir; } ;
typedef TYPE_2__ zfsctl_root_t ;
typedef int vnode_t ;
typedef int uint64_t ;
typedef int sfs_node_t ;
typedef int crtime ;
struct TYPE_8__ {int z_sa_hdl; } ;


 int ASSERT (int ) ;
 int LK_EXCLUSIVE ;
 int SA_ZPL_CRTIME (TYPE_1__*) ;
 int VERIFY (int) ;
 scalar_t__ VFS_ROOT (int ,int ,int **) ;
 TYPE_4__* VTOZ (int *) ;
 int ZFSCTL_INO_ROOT ;
 int ZFSCTL_INO_SNAPDIR ;
 int ZFS_TIME_DECODE (int *,int *) ;
 scalar_t__ sa_lookup (int ,int ,int **,int) ;
 int * sfs_alloc_node (int,char*,int ,int ) ;
 int vput (int *) ;

void
zfsctl_create(zfsvfs_t *zfsvfs)
{
 zfsctl_root_t *dot_zfs;
 sfs_node_t *snapdir;
 vnode_t *rvp;
 uint64_t crtime[2];

 ASSERT(zfsvfs->z_ctldir == ((void*)0));

 snapdir = sfs_alloc_node(sizeof(*snapdir), "snapshot", ZFSCTL_INO_ROOT,
     ZFSCTL_INO_SNAPDIR);
 dot_zfs = (zfsctl_root_t *)sfs_alloc_node(sizeof(*dot_zfs), ".zfs", 0,
     ZFSCTL_INO_ROOT);
 dot_zfs->snapdir = snapdir;

 VERIFY(VFS_ROOT(zfsvfs->z_vfs, LK_EXCLUSIVE, &rvp) == 0);
 VERIFY(0 == sa_lookup(VTOZ(rvp)->z_sa_hdl, SA_ZPL_CRTIME(zfsvfs),
     &crtime, sizeof(crtime)));
 ZFS_TIME_DECODE(&dot_zfs->cmtime, crtime);
 vput(rvp);

 zfsvfs->z_ctldir = dot_zfs;
}
