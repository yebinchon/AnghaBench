
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mnt_opt; } ;
typedef TYPE_1__ vfs_t ;


 int MNT_ILOCK (TYPE_1__*) ;
 int MNT_IUNLOCK (TYPE_1__*) ;
 int MNT_MTX (TYPE_1__*) ;
 int mtx_owned (int ) ;
 int vfs_deleteopt (int ,char const*) ;

void
vfs_clearmntopt(vfs_t *vfsp, const char *name)
{
 int locked;

 if (!(locked = mtx_owned(MNT_MTX(vfsp))))
  MNT_ILOCK(vfsp);
 vfs_deleteopt(vfsp->mnt_opt, name);
 if (!locked)
  MNT_IUNLOCK(vfsp);
}
