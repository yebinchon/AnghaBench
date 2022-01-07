
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
struct direct {int d_name; int d_namlen; int d_type; scalar_t__ d_reclen; int d_ino; } ;
typedef size_t off_t ;
typedef int ino_t ;
struct TYPE_3__ {scalar_t__ fs_bsize; } ;


 scalar_t__ DIRBLKSIZ ;
 int DT_REG ;
 int MAXBSIZE ;
 int SUJ_FILE ;
 int bcopy (int ,int *,int ) ;
 scalar_t__ bread (int *,int ,char*,scalar_t__) ;
 scalar_t__ bwrite (int *,int ,char*,scalar_t__) ;
 int bzero (char*,scalar_t__) ;
 int dir_clear_block (char*,scalar_t__) ;
 int disk ;
 int fsbtodb (TYPE_1__*,int ) ;
 TYPE_1__ sblock ;
 int strlen (int ) ;
 int warn (char*) ;

__attribute__((used)) static int
dir_insert(ufs2_daddr_t blk, off_t off, ino_t ino)
{
 struct direct *dp;
 char block[MAXBSIZE];

 if (bread(&disk, fsbtodb(&sblock, blk), block, sblock.fs_bsize) <= 0) {
  warn("Failed to read dir block");
  return (-1);
 }
 bzero(&block[off], sblock.fs_bsize - off);
 dp = (struct direct *)&block[off];
 dp->d_ino = ino;
 dp->d_reclen = DIRBLKSIZ;
 dp->d_type = DT_REG;
 dp->d_namlen = strlen(SUJ_FILE);
 bcopy(SUJ_FILE, &dp->d_name, strlen(SUJ_FILE));
 dir_clear_block(block, off + DIRBLKSIZ);
 if (bwrite(&disk, fsbtodb(&sblock, blk), block, sblock.fs_bsize) <= 0) {
  warn("Failed to write dir block");
  return (-1);
 }
 return (0);
}
