
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef int ino_t ;
struct TYPE_6__ {int * b_buf; } ;
struct TYPE_8__ {TYPE_1__ b_un; } ;
struct TYPE_7__ {int fs_ipg; scalar_t__ fs_magic; } ;


 int BT_INODES ;
 int EEXIT ;
 scalar_t__ FS_UFS1_MAGIC ;
 int INOBUFSIZE ;
 int * Malloc (unsigned int) ;
 int blkroundup (TYPE_2__*,int ) ;
 int errx (int ,char*,...) ;
 int fullcnt ;
 int initbarea (TYPE_3__*,int ) ;
 TYPE_3__ inobuf ;
 int inobufsize ;
 int lastinum ;
 int lastvalidinum ;
 int nextino ;
 int partialcnt ;
 int partialsize ;
 scalar_t__ readcount ;
 int readpercg ;
 TYPE_2__ sblock ;
 scalar_t__ startinum ;

void
setinodebuf(ino_t inum)
{

 if (inum % sblock.fs_ipg != 0)
  errx(EEXIT, "bad inode number %ju to setinodebuf",
      (uintmax_t)inum);
 lastvalidinum = inum + sblock.fs_ipg - 1;
 startinum = 0;
 nextino = inum;
 lastinum = inum;
 readcount = 0;
 if (inobuf.b_un.b_buf != ((void*)0))
  return;
 inobufsize = blkroundup(&sblock, INOBUFSIZE);
 fullcnt = inobufsize / ((sblock.fs_magic == FS_UFS1_MAGIC) ?
     sizeof(struct ufs1_dinode) : sizeof(struct ufs2_dinode));
 readpercg = sblock.fs_ipg / fullcnt;
 partialcnt = sblock.fs_ipg % fullcnt;
 partialsize = partialcnt * ((sblock.fs_magic == FS_UFS1_MAGIC) ?
     sizeof(struct ufs1_dinode) : sizeof(struct ufs2_dinode));
 if (partialcnt != 0) {
  readpercg++;
 } else {
  partialcnt = fullcnt;
  partialsize = inobufsize;
 }
 initbarea(&inobuf, BT_INODES);
 if ((inobuf.b_un.b_buf = Malloc((unsigned)inobufsize)) == ((void*)0))
  errx(EEXIT, "cannot allocate space for inode buffer");
}
