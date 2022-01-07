
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int st_mode; int st_nlink; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
struct TYPE_3__ {char* fts_accpath; char* fts_name; int fts_flags; int fts_errno; scalar_t__ fts_dev; scalar_t__ fts_ino; scalar_t__ fts_level; struct TYPE_3__* fts_cycle; struct TYPE_3__* fts_parent; int fts_nlink; struct stat* fts_statp; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int FTS_D ;
 int FTS_DC ;
 int FTS_DEFAULT ;
 int FTS_DOT ;
 int FTS_F ;
 int FTS_ISW ;
 int FTS_LOGICAL ;
 int FTS_NOSTAT ;
 int FTS_NS ;
 scalar_t__ FTS_ROOTLEVEL ;
 int FTS_SL ;
 int FTS_SLNONE ;
 int FTS_W ;
 scalar_t__ ISDOT (char*) ;
 scalar_t__ ISSET (int ) ;
 int S_IFWHT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 void* errno ;
 scalar_t__ fstatat (int,char const*,struct stat*,int ) ;
 int memset (struct stat*,char,int) ;

__attribute__((used)) static int
fts_stat(FTS *sp, FTSENT *p, int follow, int dfd)
{
 FTSENT *t;
 dev_t dev;
 ino_t ino;
 struct stat *sbp, sb;
 int saved_errno;
 const char *path;

 if (dfd == -1)
  path = p->fts_accpath, dfd = AT_FDCWD;
 else
  path = p->fts_name;


 sbp = ISSET(FTS_NOSTAT) ? &sb : p->fts_statp;
 if (ISSET(FTS_LOGICAL) || follow) {
  if (fstatat(dfd, path, sbp, 0)) {
   saved_errno = errno;
   if (fstatat(dfd, path, sbp, AT_SYMLINK_NOFOLLOW)) {
    p->fts_errno = saved_errno;
    goto err;
   }
   errno = 0;
   if (S_ISLNK(sbp->st_mode))
    return (FTS_SLNONE);
  }
 } else if (fstatat(dfd, path, sbp, AT_SYMLINK_NOFOLLOW)) {
  p->fts_errno = errno;
err: memset(sbp, 0, sizeof(struct stat));
  return (FTS_NS);
 }

 if (S_ISDIR(sbp->st_mode)) {







  dev = p->fts_dev = sbp->st_dev;
  ino = p->fts_ino = sbp->st_ino;
  p->fts_nlink = sbp->st_nlink;

  if (ISDOT(p->fts_name))
   return (FTS_DOT);







  for (t = p->fts_parent;
      t->fts_level >= FTS_ROOTLEVEL; t = t->fts_parent)
   if (ino == t->fts_ino && dev == t->fts_dev) {
    p->fts_cycle = t;
    return (FTS_DC);
   }
  return (FTS_D);
 }
 if (S_ISLNK(sbp->st_mode))
  return (FTS_SL);
 if (S_ISREG(sbp->st_mode))
  return (FTS_F);
 return (FTS_DEFAULT);
}
