
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
struct inodesc {scalar_t__ id_number; } ;
struct TYPE_5__ {int ino_state; } ;
struct TYPE_4__ {int size; scalar_t__ value; } ;


 int DIP (union dinode*,int ) ;
 int IFDIR ;
 int IFMT ;
 int MIBSIZE ;
 int USTATE ;
 int adjrefcnt ;
 scalar_t__ bkgrdflag ;
 int ckinode (union dinode*,struct inodesc*) ;
 int clearinode (union dinode*) ;
 TYPE_1__ cmd ;
 scalar_t__ debug ;
 int di_mode ;
 int di_nlink ;
 union dinode* ginode (scalar_t__) ;
 int inodirty (union dinode*) ;
 TYPE_2__* inoinfo (scalar_t__) ;
 int n_files ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 int prtinode (scalar_t__,union dinode*) ;
 int pwarn (char*,char const*,char*) ;
 int reply (char*) ;
 int rwerror (char*,scalar_t__) ;
 int sysctl (int ,int ,int ,int ,TYPE_1__*,int) ;

void
clri(struct inodesc *idesc, const char *type, int flag)
{
 union dinode *dp;

 dp = ginode(idesc->id_number);
 if (flag == 1) {
  pwarn("%s %s", type,
      (DIP(dp, di_mode) & IFMT) == IFDIR ? "DIR" : "FILE");
  prtinode(idesc->id_number, dp);
  printf("\n");
 }
 if (preen || reply("CLEAR") == 1) {
  if (preen)
   printf(" (CLEARED)\n");
  n_files--;
  if (bkgrdflag == 0) {
   (void)ckinode(dp, idesc);
   inoinfo(idesc->id_number)->ino_state = USTATE;
   clearinode(dp);
   inodirty(dp);
  } else {
   cmd.value = idesc->id_number;
   cmd.size = -DIP(dp, di_nlink);
   if (debug)
    printf("adjrefcnt ino %ld amt %lld\n",
        (long)cmd.value, (long long)cmd.size);
   if (sysctl(adjrefcnt, MIBSIZE, 0, 0,
       &cmd, sizeof cmd) == -1)
    rwerror("ADJUST INODE", cmd.value);
  }
 }
}
