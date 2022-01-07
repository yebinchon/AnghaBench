
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ino_blk {scalar_t__ ib_dirty; int ib_blk; int ib_buf; } ;
struct TYPE_3__ {int fs_bsize; } ;


 int bwrite (int *,int ,int ,int ) ;
 int disk ;
 int err_suj (char*,int ) ;
 TYPE_1__* fs ;
 int fsbtodb (TYPE_1__*,int ) ;

__attribute__((used)) static void
iblk_write(struct ino_blk *iblk)
{

 if (iblk->ib_dirty == 0)
  return;
 if (bwrite(&disk, fsbtodb(fs, iblk->ib_blk), iblk->ib_buf,
     fs->fs_bsize) == -1)
  err_suj("Failed to write inode block %jd\n", iblk->ib_blk);
}
