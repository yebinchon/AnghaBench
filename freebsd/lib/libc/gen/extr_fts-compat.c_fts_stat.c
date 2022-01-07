
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_short ;
struct freebsd11_stat {scalar_t__ st_dev; scalar_t__ st_ino; int st_mode; int st_nlink; } ;
struct TYPE_3__ {int fts_flags; int fts_errno; scalar_t__ fts_dev; scalar_t__ fts_ino; scalar_t__ fts_level; struct TYPE_3__* fts_cycle; struct TYPE_3__* fts_parent; int fts_name; int fts_nlink; int fts_accpath; struct freebsd11_stat* fts_statp; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


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
 scalar_t__ ISDOT (int ) ;
 scalar_t__ ISSET (int ) ;
 int S_IFWHT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 void* errno ;
 scalar_t__ freebsd11_lstat (int ,struct freebsd11_stat*) ;
 scalar_t__ freebsd11_stat (int ,struct freebsd11_stat*) ;
 int memset (struct freebsd11_stat*,char,int) ;

__attribute__((used)) static u_short
fts_stat(FTS *sp, FTSENT *p, int follow)
{
 FTSENT *t;
 uint32_t dev;
 uint32_t ino;
 struct freebsd11_stat *sbp, sb;
 int saved_errno;


 sbp = ISSET(FTS_NOSTAT) ? &sb : p->fts_statp;
 if (ISSET(FTS_LOGICAL) || follow) {
  if (freebsd11_stat(p->fts_accpath, sbp)) {
   saved_errno = errno;
   if (!freebsd11_lstat(p->fts_accpath, sbp)) {
    errno = 0;
    return (FTS_SLNONE);
   }
   p->fts_errno = saved_errno;
   goto err;
  }
 } else if (freebsd11_lstat(p->fts_accpath, sbp)) {
  p->fts_errno = errno;
err: memset(sbp, 0, sizeof(*sbp));
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
