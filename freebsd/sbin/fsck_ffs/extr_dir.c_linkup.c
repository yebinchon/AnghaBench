
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
typedef char* u_long ;
struct inodesc {scalar_t__ id_parent; scalar_t__ id_number; int id_func; int id_type; int id_name; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ ino_state; scalar_t__ ino_linkcnt; } ;


 int ADDR ;
 int ALTERED ;
 int BUFSIZ ;
 int DATA ;
 scalar_t__ DFOUND ;
 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int) ;
 int FOUND ;
 int IFDIR ;
 int IFMT ;
 scalar_t__ UFS_ROOTINO ;
 int adjust (struct inodesc*,scalar_t__) ;
 scalar_t__ allocdir (scalar_t__,scalar_t__,int ) ;
 int changeino (scalar_t__,char*,scalar_t__) ;
 int ckinode (union dinode*,struct inodesc*) ;
 scalar_t__ cursnapshot ;
 int di_mode ;
 int di_nlink ;
 int di_size ;
 int findino ;
 int freedir (scalar_t__,scalar_t__) ;
 union dinode* ginode (scalar_t__) ;
 int inodirty (union dinode*) ;
 TYPE_1__* inoinfo (scalar_t__) ;
 scalar_t__ lfdir ;
 int lfmode ;
 char* lfname ;
 int lftempname (char*,scalar_t__) ;
 scalar_t__ makeentry (scalar_t__,scalar_t__,char*) ;
 int memset (struct inodesc*,int ,int) ;
 int numdirs ;
 int pass4check ;
 int pfatal (char*) ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 int prtinode (scalar_t__,union dinode*) ;
 int pwarn (char*,...) ;
 scalar_t__ reply (char*) ;
 int strdup (char*) ;

int
linkup(ino_t orphan, ino_t parentdir, char *name)
{
 union dinode *dp;
 int lostdir;
 ino_t oldlfdir;
 struct inodesc idesc;
 char tempname[BUFSIZ];

 memset(&idesc, 0, sizeof(struct inodesc));
 dp = ginode(orphan);
 lostdir = (DIP(dp, di_mode) & IFMT) == IFDIR;
 pwarn("UNREF %s ", lostdir ? "DIR" : "FILE");
 prtinode(orphan, dp);
 printf("\n");
 if (preen && DIP(dp, di_size) == 0)
  return (0);
 if (cursnapshot != 0) {
  pfatal("FILE LINKUP IN SNAPSHOT");
  return (0);
 }
 if (preen)
  printf(" (RECONNECTED)\n");
 else
  if (reply("RECONNECT") == 0)
   return (0);
 if (lfdir == 0) {
  dp = ginode(UFS_ROOTINO);
  idesc.id_name = strdup(lfname);
  idesc.id_type = DATA;
  idesc.id_func = findino;
  idesc.id_number = UFS_ROOTINO;
  if ((ckinode(dp, &idesc) & FOUND) != 0) {
   lfdir = idesc.id_parent;
  } else {
   pwarn("NO lost+found DIRECTORY");
   if (preen || reply("CREATE")) {
    lfdir = allocdir(UFS_ROOTINO, (ino_t)0, lfmode);
    if (lfdir != 0) {
     if (makeentry(UFS_ROOTINO, lfdir,
         lfname) != 0) {
      numdirs++;
      if (preen)
       printf(" (CREATED)\n");
     } else {
      freedir(lfdir, UFS_ROOTINO);
      lfdir = 0;
      if (preen)
       printf("\n");
     }
    }
   }
  }
  if (lfdir == 0) {
   pfatal("SORRY. CANNOT CREATE lost+found DIRECTORY");
   printf("\n\n");
   return (0);
  }
 }
 dp = ginode(lfdir);
 if ((DIP(dp, di_mode) & IFMT) != IFDIR) {
  pfatal("lost+found IS NOT A DIRECTORY");
  if (reply("REALLOCATE") == 0)
   return (0);
  oldlfdir = lfdir;
  if ((lfdir = allocdir(UFS_ROOTINO, (ino_t)0, lfmode)) == 0) {
   pfatal("SORRY. CANNOT CREATE lost+found DIRECTORY\n\n");
   return (0);
  }
  if ((changeino(UFS_ROOTINO, lfname, lfdir) & ALTERED) == 0) {
   pfatal("SORRY. CANNOT CREATE lost+found DIRECTORY\n\n");
   return (0);
  }
  inodirty(dp);
  idesc.id_type = ADDR;
  idesc.id_func = pass4check;
  idesc.id_number = oldlfdir;
  adjust(&idesc, inoinfo(oldlfdir)->ino_linkcnt + 1);
  inoinfo(oldlfdir)->ino_linkcnt = 0;
  dp = ginode(lfdir);
 }
 if (inoinfo(lfdir)->ino_state != DFOUND) {
  pfatal("SORRY. NO lost+found DIRECTORY\n\n");
  return (0);
 }
 (void)lftempname(tempname, orphan);
 if (makeentry(lfdir, orphan, (name ? name : tempname)) == 0) {
  pfatal("SORRY. NO SPACE IN lost+found DIRECTORY");
  printf("\n\n");
  return (0);
 }
 inoinfo(orphan)->ino_linkcnt--;
 if (lostdir) {
  if ((changeino(orphan, "..", lfdir) & ALTERED) == 0 &&
      parentdir != (ino_t)-1)
   (void)makeentry(orphan, lfdir, "..");
  dp = ginode(lfdir);
  DIP_SET(dp, di_nlink, DIP(dp, di_nlink) + 1);
  inodirty(dp);
  inoinfo(lfdir)->ino_linkcnt++;
  pwarn("DIR I=%lu CONNECTED. ", (u_long)orphan);
  if (parentdir != (ino_t)-1) {
   printf("PARENT WAS I=%lu\n", (u_long)parentdir);







   inoinfo(parentdir)->ino_linkcnt++;
  }
  if (preen == 0)
   printf("\n");
 }
 return (1);
}
