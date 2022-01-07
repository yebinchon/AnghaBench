
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inoinfo {intptr_t i_dotdot; intptr_t i_parent; intptr_t i_number; } ;
struct inodesc {intptr_t id_number; intptr_t id_parent; int id_func; void* id_type; TYPE_1__* id_dirp; int id_name; } ;
struct TYPE_7__ {int ino_linkcnt; } ;
struct TYPE_6__ {intptr_t value; intptr_t size; } ;
struct TYPE_5__ {intptr_t d_ino; char* d_name; } ;


 void* DATA ;
 int FOUND ;
 int MAXPATHLEN ;
 int ckinode (int ,struct inodesc*) ;
 TYPE_2__ cmd ;
 scalar_t__ cursnapshot ;
 int deleteentry ;
 int errno ;
 int findino ;
 int getpathname (char*,intptr_t,intptr_t) ;
 int ginode (intptr_t) ;
 TYPE_3__* inoinfo (intptr_t) ;
 int memset (struct inodesc*,int ,int) ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 int pwarn (char*,char*,char*) ;
 int reply (char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (char*) ;
 char* strerror (int ) ;
 int sysctlbyname (char*,int ,int ,TYPE_2__*,int) ;

__attribute__((used)) static int
fix_extraneous(struct inoinfo *inp, struct inodesc *idesc)
{
 char *cp;
 struct inodesc dotdesc;
 char oldname[MAXPATHLEN + 1];
 char newname[MAXPATHLEN + 1];





 if (inp->i_dotdot == 0) {
  memset(&dotdesc, 0, sizeof(struct inodesc));
  dotdesc.id_type = DATA;
  dotdesc.id_number = idesc->id_dirp->d_ino;
  dotdesc.id_func = findino;
  dotdesc.id_name = strdup("..");
  if ((ckinode(ginode(dotdesc.id_number), &dotdesc) & FOUND))
   inp->i_dotdot = dotdesc.id_parent;
 }
 if (inp->i_dotdot == 0 ||
     idesc->id_number == inp->i_parent ||
     inp->i_dotdot != idesc->id_number ||
     inp->i_dotdot == inp->i_parent) {
  getpathname(newname, idesc->id_number, idesc->id_number);
  if (strcmp(newname, "/") != 0)
   strcat (newname, "/");
  strcat(newname, idesc->id_dirp->d_name);
  getpathname(oldname, inp->i_number, inp->i_number);
  pwarn("%s IS AN EXTRANEOUS HARD LINK TO DIRECTORY %s",
      newname, oldname);
  if (cursnapshot != 0) {





   cmd.value = idesc->id_number;
   if (sysctlbyname("vfs.ffs.setcwd", 0, 0,
       &cmd, sizeof cmd) == -1) {
    printf(" (IGNORED)\n");
    return (0);
   }
   cmd.value = (intptr_t)idesc->id_dirp->d_name;
   cmd.size = inp->i_number;
   if (sysctlbyname("vfs.ffs.unlink", 0, 0,
       &cmd, sizeof cmd) == -1) {
    printf(" (UNLINK FAILED: %s)\n",
        strerror(errno));
    return (0);
   }
   printf(" (REMOVED)\n");
   return (0);
  }
  if (preen) {
   printf(" (REMOVED)\n");
   return (1);
  }
  return (reply("REMOVE"));
 }




 getpathname(oldname, inp->i_parent, inp->i_number);
 getpathname(newname, inp->i_number, inp->i_number);
 pwarn("%s IS AN EXTRANEOUS HARD LINK TO DIRECTORY %s", oldname,
     newname);
 if (cursnapshot != 0) {





  cmd.value = inp->i_parent;
  if (sysctlbyname("vfs.ffs.setcwd", 0, 0,
      &cmd, sizeof cmd) == -1) {
   printf(" (IGNORED)\n");
   return (0);
  }
  if ((cp = strchr(oldname, '/')) == ((void*)0)) {
   printf(" (IGNORED)\n");
   return (0);
  }
  cmd.value = (intptr_t)(cp + 1);
  cmd.size = inp->i_number;
  if (sysctlbyname("vfs.ffs.unlink", 0, 0,
      &cmd, sizeof cmd) == -1) {
   printf(" (UNLINK FAILED: %s)\n",
       strerror(errno));
   return (0);
  }
  printf(" (REMOVED)\n");
  inp->i_parent = idesc->id_number;
  return (0);
 }
 if (!preen && !reply("REMOVE"))
  return (0);
 memset(&dotdesc, 0, sizeof(struct inodesc));
 dotdesc.id_type = DATA;
 dotdesc.id_number = inp->i_parent;
 dotdesc.id_parent = inp->i_number;
 dotdesc.id_func = deleteentry;
 if ((ckinode(ginode(dotdesc.id_number), &dotdesc) & FOUND) && preen)
  printf(" (REMOVED)\n");
 inp->i_parent = idesc->id_number;
 inoinfo(inp->i_number)->ino_linkcnt++;
 return (0);
}
