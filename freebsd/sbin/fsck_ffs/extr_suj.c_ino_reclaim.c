
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef int uint32_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ fs_magic; } ;


 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int) ;
 scalar_t__ FS_UFS1_MAGIC ;
 int IFDIR ;
 int IFMT ;
 scalar_t__ UFS_ROOTINO ;
 int VISIT_EXT ;
 int VISIT_INDIR ;
 int blk_free_visit ;
 int bzero (union dinode*,int) ;
 scalar_t__ debug ;
 int di_gen ;
 int di_mode ;
 int di_nlink ;
 int err_suj (char*) ;
 TYPE_1__* fs ;
 int ino_dirty (scalar_t__) ;
 int ino_free (scalar_t__,int) ;
 int ino_free_children ;
 int ino_visit (union dinode*,scalar_t__,int ,int) ;
 int printf (char*,int ,int,int) ;

__attribute__((used)) static void
ino_reclaim(union dinode *ip, ino_t ino, int mode)
{
 uint32_t gen;

 if (ino == UFS_ROOTINO)
  err_suj("Attempting to free UFS_ROOTINO\n");
 if (debug)
  printf("Truncating and freeing ino %ju, nlink %d, mode %o\n",
      (uintmax_t)ino, DIP(ip, di_nlink), DIP(ip, di_mode));


 if ((DIP(ip, di_mode) & IFMT) == IFDIR)
  ino_visit(ip, ino, ino_free_children, 0);
 DIP_SET(ip, di_nlink, 0);
 ino_visit(ip, ino, blk_free_visit, VISIT_EXT | VISIT_INDIR);

 gen = DIP(ip, di_gen);
 if (fs->fs_magic == FS_UFS1_MAGIC)
  bzero(ip, sizeof(struct ufs1_dinode));
 else
  bzero(ip, sizeof(struct ufs2_dinode));
 DIP_SET(ip, di_gen, gen);
 ino_dirty(ino);
 ino_free(ino, mode);
 return;
}
