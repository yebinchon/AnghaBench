
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
struct inodesc {scalar_t__ id_number; } ;
typedef int ino_t ;
struct TYPE_3__ {scalar_t__ value; int size; } ;


 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int) ;
 int IFDIR ;
 int IFMT ;
 int MIBSIZE ;
 int adjrefcnt ;
 scalar_t__ bkgrdflag ;
 int clri (struct inodesc*,char*,int) ;
 TYPE_1__ cmd ;
 scalar_t__ debug ;
 int di_mode ;
 int di_nlink ;
 union dinode* ginode (scalar_t__) ;
 int inodirty (union dinode*) ;
 scalar_t__ lfdir ;
 char* lfname ;
 scalar_t__ linkup (scalar_t__,int ,int *) ;
 int pfatal (char*) ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 int prtinode (scalar_t__,union dinode*) ;
 int pwarn (char*,char*) ;
 int reply (char*) ;
 int resolved ;
 int rwerror (char*,scalar_t__) ;
 int sysctl (int ,int ,int ,int ,TYPE_1__*,int) ;
 scalar_t__ usedsoftdep ;

void
adjust(struct inodesc *idesc, int lcnt)
{
 union dinode *dp;
 int saveresolved;

 dp = ginode(idesc->id_number);
 if (DIP(dp, di_nlink) == lcnt) {





  if (resolved && (preen || bkgrdflag) && usedsoftdep) {
   clri(idesc, "UNREF", 1);
   return;
  } else {






   saveresolved = resolved;
   if (linkup(idesc->id_number, (ino_t)0, ((void*)0)) == 0) {
    resolved = saveresolved;
    clri(idesc, "UNREF", 0);
    return;
   }



   dp = ginode(idesc->id_number);
   lcnt--;
  }
 }
 if (lcnt != 0) {
  pwarn("LINK COUNT %s", (lfdir == idesc->id_number) ? lfname :
   ((DIP(dp, di_mode) & IFMT) == IFDIR ? "DIR" : "FILE"));
  prtinode(idesc->id_number, dp);
  printf(" COUNT %d SHOULD BE %d",
   DIP(dp, di_nlink), DIP(dp, di_nlink) - lcnt);
  if (preen || usedsoftdep) {
   if (lcnt < 0) {
    printf("\n");
    pfatal("LINK COUNT INCREASING");
   }
   if (preen)
    printf(" (ADJUSTED)\n");
  }
  if (preen || reply("ADJUST") == 1) {
   if (bkgrdflag == 0) {
    DIP_SET(dp, di_nlink, DIP(dp, di_nlink) - lcnt);
    inodirty(dp);
   } else {
    cmd.value = idesc->id_number;
    cmd.size = -lcnt;
    if (debug)
     printf("adjrefcnt ino %ld amt %lld\n",
         (long)cmd.value,
         (long long)cmd.size);
    if (sysctl(adjrefcnt, MIBSIZE, 0, 0,
        &cmd, sizeof cmd) == -1)
     rwerror("ADJUST INODE", cmd.value);
   }
  }
 }
}
