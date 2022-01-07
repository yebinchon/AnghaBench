
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
typedef int off_t ;
typedef int ino_t ;
struct TYPE_3__ {int fs_bsize; int fs_fsize; } ;


 int MAXBSIZE ;
 scalar_t__ bread (int *,int ,char*,int ) ;
 scalar_t__ bwrite (int *,int ,char*,int ) ;
 int dir_clear_block (char*,int ) ;
 int dir_insert (int ,int ,int ) ;
 int disk ;
 int fsbtodb (TYPE_1__*,int ) ;
 int roundup (int ,int ) ;
 TYPE_1__ sblock ;
 int warn (char*) ;

__attribute__((used)) static int
dir_extend(ufs2_daddr_t blk, ufs2_daddr_t nblk, off_t size, ino_t ino)
{
 char block[MAXBSIZE];

 if (bread(&disk, fsbtodb(&sblock, blk), block,
     roundup(size, sblock.fs_fsize)) <= 0) {
  warn("Failed to read dir block");
  return (-1);
 }
 dir_clear_block(block, size);
 if (bwrite(&disk, fsbtodb(&sblock, nblk), block, sblock.fs_bsize)
     <= 0) {
  warn("Failed to write dir block");
  return (-1);
 }

 return (dir_insert(nblk, size, ino));
}
