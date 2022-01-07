
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct inoinfo {void* i_number; scalar_t__ i_parent; scalar_t__ i_dotdot; } ;
struct inodesc {void* id_number; char* id_name; int id_func; void* id_parent; int id_type; } ;
typedef void* ino_t ;
struct TYPE_2__ {int ino_state; int ino_linkcnt; } ;


 int DATA ;
 int DCLEAR ;
 void* DFOUND ;
 int FOUND ;
 int INO_IS_DUNFOUND (scalar_t__) ;
 scalar_t__ S_IS_DUNFOUND (int) ;
 int UFS_MAXNAMLEN ;
 scalar_t__ UFS_ROOTINO ;
 scalar_t__ bkgrdflag ;
 char* cdevname ;
 int ckinode (int ,struct inodesc*) ;
 int clearentry ;
 int countdirs ;
 int findname ;
 struct inoinfo* getinoinfo (scalar_t__) ;
 int ginode (void*) ;
 scalar_t__ got_sigalarm ;
 scalar_t__ got_siginfo ;
 TYPE_1__* inoinfo (void*) ;
 int inplast ;
 struct inoinfo** inpsort ;
 void* lfdir ;
 scalar_t__ linkup (void*,void*,char*) ;
 int memset (struct inodesc*,int ,int) ;
 int pfatal (char*,...) ;
 scalar_t__ preen ;
 int printf (char*,char*,int,int,int) ;
 int propagate () ;
 scalar_t__ reply (char*) ;
 scalar_t__ resolved ;
 int setproctitle (char*,char*,int) ;
 scalar_t__ usedsoftdep ;

void
pass3(void)
{
 struct inoinfo *inp;
 int loopcnt, inpindex, state;
 ino_t orphan;
 struct inodesc idesc;
 char namebuf[UFS_MAXNAMLEN+1];

 for (inpindex = inplast - 1; inpindex >= 0; inpindex--) {
  if (got_siginfo) {
   printf("%s: phase 3: dir %d of %d (%d%%)\n", cdevname,
       (int)(inplast - inpindex - 1), (int)inplast,
       (int)((inplast - inpindex - 1) * 100 / inplast));
   got_siginfo = 0;
  }
  if (got_sigalarm) {
   setproctitle("%s p3 %d%%", cdevname,
       (int)((inplast - inpindex - 1) * 100 / inplast));
   got_sigalarm = 0;
  }
  inp = inpsort[inpindex];
  state = inoinfo(inp->i_number)->ino_state;
  if (inp->i_number == UFS_ROOTINO ||
      (inp->i_parent != 0 && !S_IS_DUNFOUND(state)))
   continue;
  if (state == DCLEAR)
   continue;






  if ((preen || bkgrdflag) &&
      resolved && usedsoftdep && S_IS_DUNFOUND(state)) {
   if (inp->i_dotdot >= UFS_ROOTINO)
    inoinfo(inp->i_dotdot)->ino_linkcnt++;
   continue;
  }
  for (loopcnt = 0; ; loopcnt++) {
   orphan = inp->i_number;
   if (inp->i_parent == 0 ||
       !INO_IS_DUNFOUND(inp->i_parent) ||
       loopcnt > countdirs)
    break;
   inp = getinoinfo(inp->i_parent);
  }
  if (loopcnt <= countdirs) {
   if (linkup(orphan, inp->i_dotdot, ((void*)0))) {
    inp->i_parent = inp->i_dotdot = lfdir;
    inoinfo(lfdir)->ino_linkcnt--;
   }
   inoinfo(orphan)->ino_state = DFOUND;
   propagate();
   continue;
  }
  pfatal("ORPHANED DIRECTORY LOOP DETECTED I=%lu",
      (u_long)orphan);
  if (reply("RECONNECT") == 0)
   continue;
  memset(&idesc, 0, sizeof(struct inodesc));
  idesc.id_type = DATA;
  idesc.id_number = inp->i_parent;
  idesc.id_parent = orphan;
  idesc.id_func = findname;
  idesc.id_name = namebuf;
  if ((ckinode(ginode(inp->i_parent), &idesc) & FOUND) == 0)
   pfatal("COULD NOT FIND NAME IN PARENT DIRECTORY");
  if (linkup(orphan, inp->i_parent, namebuf)) {
   idesc.id_func = clearentry;
   if (ckinode(ginode(inp->i_parent), &idesc) & FOUND)
    inoinfo(orphan)->ino_linkcnt++;
   inp->i_parent = inp->i_dotdot = lfdir;
   inoinfo(lfdir)->ino_linkcnt--;
  }
  inoinfo(orphan)->ino_state = DFOUND;
  propagate();
 }
}
