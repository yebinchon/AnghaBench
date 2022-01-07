
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef int ino_t ;
struct TYPE_3__ {int fs_ipg; scalar_t__ fs_magic; } ;


 scalar_t__ FS_UFS1_MAGIC ;
 int INOBUFSIZE ;
 int blkroundup (TYPE_1__*,int ) ;
 int errx (int,char*,...) ;
 int fullcnt ;
 int inobufsize ;
 int * inodebuf ;
 int lastinum ;
 int lastvalidinum ;
 int * malloc (unsigned int) ;
 int nextino ;
 int partialcnt ;
 int partialsize ;
 scalar_t__ readcnt ;
 int readpercg ;
 TYPE_1__ sblock ;

void
setinodebuf(ino_t inum)
{

 if (inum % sblock.fs_ipg != 0)
  errx(1, "bad inode number %ju to setinodebuf", (uintmax_t)inum);
 lastvalidinum = inum + sblock.fs_ipg - 1;
 nextino = inum;
 lastinum = inum;
 readcnt = 0;
 if (inodebuf != ((void*)0))
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
 if ((inodebuf = malloc((unsigned)inobufsize)) == ((void*)0))
  errx(1, "cannot allocate space for inode buffer");
}
