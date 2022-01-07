
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
struct ufs2_dinode {int dummy; } ;
struct TYPE_3__ {scalar_t__ fs_magic; } ;


 scalar_t__ FS_UFS2_MAGIC ;
 int dirty (int ) ;
 int ffs_update_dinode_ckhash (TYPE_1__*,struct ufs2_dinode*) ;
 int pbp ;
 TYPE_1__ sblock ;

void
inodirty(union dinode *dp)
{

 if (sblock.fs_magic == FS_UFS2_MAGIC)
  ffs_update_dinode_ckhash(&sblock, (struct ufs2_dinode *)dp);
 dirty(pbp);
}
