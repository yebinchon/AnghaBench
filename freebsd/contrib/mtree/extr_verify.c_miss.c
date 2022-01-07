
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct stat {int st_mode; } ;
struct TYPE_3__ {int flags; int type; int st_mode; int st_flags; int st_gid; int st_uid; struct TYPE_3__* child; int slink; int st_rdev; int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ NODE ;




 int F_DEV ;

 int F_FLAGS ;
 int F_GID ;
 int F_GNAME ;

 int F_MODE ;
 int F_OPT ;
 int F_SLINK ;
 int F_UID ;
 int F_UNAME ;
 int F_VISIT ;
 int SP_FLGS ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ dflag ;
 int errno ;
 scalar_t__ iflag ;
 scalar_t__ lchflags (char*,int) ;
 scalar_t__ lchmod (char*,int) ;
 scalar_t__ lchown (char*,int ,int ) ;
 int mkdir (char*,int) ;
 int mknod (char*,int,int ) ;
 scalar_t__ mtree_Wflag ;
 int mtree_err (char*,int ) ;
 int nodetoino (int) ;
 int nodetype (int) ;
 char* path ;
 int printf (char*,...) ;
 int putchar (char) ;
 scalar_t__ qflag ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,int ) ;
 char* strerror (int ) ;
 int symlink (int ,char*) ;
 scalar_t__ uflag ;

__attribute__((used)) static void
miss(NODE *p, char *tail)
{
 int create;
 char *tp;
 const char *type;
 u_int32_t flags;

 for (; p; p = p->next) {
  if (p->flags & F_OPT && !(p->flags & F_VISIT))
   continue;
  if (p->type != 129 && (dflag || p->flags & F_VISIT))
   continue;
  strcpy(tail, p->name);
  if (!(p->flags & F_VISIT)) {


   struct stat statbuf;

   if (qflag && stat(path, &statbuf) == 0 &&
       S_ISDIR(statbuf.st_mode))
    p->flags |= F_VISIT;
   else
    (void)printf("%s missing", path);
  }
  switch (p->type) {
  case 131:
  case 130:
   type = "device";
   break;
  case 129:
   type = "directory";
   break;
  case 128:
   type = "symlink";
   break;
  default:
   putchar('\n');
   continue;
  }

  create = 0;
  if (!(p->flags & F_VISIT) && uflag) {
   if (mtree_Wflag || p->type == 128)
    goto createit;
   if (!(p->flags & (F_UID | F_UNAME)))
       printf(
    " (%s not created: user not specified)", type);
   else if (!(p->flags & (F_GID | F_GNAME)))
       printf(
    " (%s not created: group not specified)", type);
   else if (!(p->flags & F_MODE))
       printf(
    " (%s not created: mode not specified)", type);
   else
 createit:
   switch (p->type) {
   case 131:
   case 130:
    if (mtree_Wflag)
     continue;
    if (!(p->flags & F_DEV))
     printf(
        " (%s not created: device not specified)",
         type);
    else if (mknod(path,
        p->st_mode | nodetoino(p->type),
        p->st_rdev) == -1)
     printf(" (%s not created: %s)\n",
         type, strerror(errno));
    else
     create = 1;
    break;
   case 128:
    if (!(p->flags & F_SLINK))
     printf(
        " (%s not created: link not specified)\n",
         type);
    else if (symlink(p->slink, path))
     printf(
         " (%s not created: %s)\n",
         type, strerror(errno));
    else
     create = 1;
    break;
   case 129:
    if (mkdir(path, S_IRWXU|S_IRWXG|S_IRWXO))
     printf(" (not created: %s)",
         strerror(errno));
    else
     create = 1;
    break;
   default:
    mtree_err("can't create create %s",
        nodetype(p->type));
   }
  }
  if (create)
   printf(" (created)");
  if (p->type == 129) {
   if (!(p->flags & F_VISIT))
    putchar('\n');
   for (tp = tail; *tp; ++tp)
    continue;
   *tp = '/';
   miss(p->child, tp + 1);
   *tp = '\0';
  } else
   putchar('\n');

  if (!create || mtree_Wflag)
   continue;
  if ((p->flags & (F_UID | F_UNAME)) &&
      (p->flags & (F_GID | F_GNAME)) &&
      (lchown(path, p->st_uid, p->st_gid))) {
   printf("%s: user/group/mode not modified: %s\n",
       path, strerror(errno));
   printf("%s: warning: file mode %snot set\n", path,
       (p->flags & F_FLAGS) ? "and file flags " : "");
   continue;
  }
  if (p->flags & F_MODE) {
   if (lchmod(path, p->st_mode))
    printf("%s: permissions not set: %s\n",
        path, strerror(errno));
  }
 }
}
