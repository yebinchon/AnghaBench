
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
struct inodesc {int id_number; int id_func; int id_type; } ;
typedef int ino_t ;
struct TYPE_6__ {int ino_state; int ino_linkcnt; } ;
struct TYPE_5__ {int il_numalloced; } ;
struct TYPE_4__ {int fs_ncg; int fs_ipg; } ;


 int ADDR ;


 int DIP (union dinode*,int ) ;


 int EEXIT ;



 int UFS_ROOTINO ;

 int adjust (struct inodesc*,short) ;
 char* cdevname ;
 int clri (struct inodesc*,char*,int) ;
 int cursnapshot ;
 int di_size ;
 int errx (int ,char*,int,int ) ;
 union dinode* ginode (int) ;
 scalar_t__ got_sigalarm ;
 scalar_t__ got_siginfo ;
 TYPE_3__* inoinfo (int) ;
 TYPE_2__* inostathead ;
 int memset (struct inodesc*,int ,int) ;
 int pass4check ;
 int printf (char*,char*,int,int,int) ;
 TYPE_1__ sblock ;
 int setproctitle (char*,char*,int) ;

void
pass4(void)
{
 ino_t inumber;
 union dinode *dp;
 struct inodesc idesc;
 int i, n, cg;

 memset(&idesc, 0, sizeof(struct inodesc));
 idesc.id_type = ADDR;
 idesc.id_func = pass4check;
 for (cg = 0; cg < sblock.fs_ncg; cg++) {
  if (got_siginfo) {
   printf("%s: phase 4: cyl group %d of %d (%d%%)\n",
       cdevname, cg, sblock.fs_ncg,
       cg * 100 / sblock.fs_ncg);
   got_siginfo = 0;
  }
  if (got_sigalarm) {
   setproctitle("%s p4 %d%%", cdevname,
       cg * 100 / sblock.fs_ncg);
   got_sigalarm = 0;
  }
  inumber = cg * sblock.fs_ipg;
  for (i = 0; i < inostathead[cg].il_numalloced; i++, inumber++) {
   if (inumber < UFS_ROOTINO)
    continue;
   idesc.id_number = inumber;
   switch (inoinfo(inumber)->ino_state) {

   case 129:
   case 132:
    if (inoinfo(inumber)->ino_linkcnt == 0) {
     clri(&idesc, "UNREF", 1);
     break;
    }


   case 130:
   case 134:
    n = inoinfo(inumber)->ino_linkcnt;
    if (n) {
     adjust(&idesc, (short)n);
     break;
    }
    break;

   case 133:
    clri(&idesc, "UNREF", 1);
    break;

   case 135:

    if (cursnapshot != 0)
     break;
    dp = ginode(inumber);
    if (DIP(dp, di_size) == 0) {
     clri(&idesc, "ZERO LENGTH", 1);
     break;
    }

   case 131:
    clri(&idesc, "BAD/DUP", 1);
    break;

   case 128:
    break;

   default:
    errx(EEXIT, "BAD STATE %d FOR INODE I=%ju",
        inoinfo(inumber)->ino_state,
        (uintmax_t)inumber);
   }
  }
 }
}
