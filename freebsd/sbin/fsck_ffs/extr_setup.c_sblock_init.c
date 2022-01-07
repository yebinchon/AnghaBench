
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * b_buf; } ;
struct TYPE_6__ {TYPE_1__ b_un; } ;


 int BT_SUPERBLK ;
 int DEV_BSIZE ;
 int EEXIT ;
 void* Malloc (int ) ;
 int SBLOCKSIZE ;
 TYPE_2__ asblk ;
 int dev_bsize ;
 int errx (int ,char*) ;
 scalar_t__ fsmodified ;
 int fswritefd ;
 int initbarea (TYPE_2__*,int ) ;
 scalar_t__ lfdir ;
 TYPE_2__ sblk ;
 int secsize ;

void
sblock_init(void)
{

 fswritefd = -1;
 fsmodified = 0;
 lfdir = 0;
 initbarea(&sblk, BT_SUPERBLK);
 initbarea(&asblk, BT_SUPERBLK);
 sblk.b_un.b_buf = Malloc(SBLOCKSIZE);
 asblk.b_un.b_buf = Malloc(SBLOCKSIZE);
 if (sblk.b_un.b_buf == ((void*)0) || asblk.b_un.b_buf == ((void*)0))
  errx(EEXIT, "cannot allocate space for superblock");
 dev_bsize = secsize = DEV_BSIZE;
}
