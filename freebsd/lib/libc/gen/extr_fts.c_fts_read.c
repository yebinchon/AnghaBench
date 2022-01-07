
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ fts_dev; char* fts_path; TYPE_1__* fts_cur; void* fts_rfd; TYPE_1__* fts_child; } ;
struct TYPE_17__ {int fts_instr; scalar_t__ fts_info; int fts_errno; int fts_flags; scalar_t__ fts_dev; char* fts_accpath; scalar_t__ fts_level; size_t fts_pathlen; struct TYPE_17__* fts_parent; void* fts_symfd; scalar_t__ fts_namelen; int fts_name; struct TYPE_17__* fts_link; } ;
typedef TYPE_1__ FTSENT ;
typedef TYPE_2__ FTS ;


 int BREAD ;
 int CLR (int ) ;
 scalar_t__ FCHDIR (TYPE_2__*,void*) ;
 int FTS_AGAIN ;
 scalar_t__ FTS_D ;
 int FTS_DONTCHDIR ;
 void* FTS_DP ;
 void* FTS_ERR ;
 int FTS_FOLLOW ;
 int FTS_NAMEONLY ;
 int FTS_NOCHDIR ;
 void* FTS_NOINSTR ;
 scalar_t__ FTS_ROOTLEVEL ;
 scalar_t__ FTS_ROOTPARENTLEVEL ;
 int FTS_SKIP ;
 scalar_t__ FTS_SL ;
 scalar_t__ FTS_SLNONE ;
 int FTS_STOP ;
 int FTS_SYMFOLLOW ;
 int FTS_XDEV ;
 scalar_t__ ISSET (int ) ;
 int NAPPEND (TYPE_1__*) ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int SET (int ) ;
 int _close (void*) ;
 void* _open (char*,int,int ) ;
 int errno ;
 int free (TYPE_1__*) ;
 TYPE_1__* fts_build (TYPE_2__*,int ) ;
 int fts_lfree (TYPE_1__*) ;
 int fts_load (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ fts_safe_changedir (TYPE_2__*,TYPE_1__*,int,char*) ;
 void* fts_stat (TYPE_2__*,TYPE_1__*,int,int) ;
 int memmove (char*,int ,scalar_t__) ;

FTSENT *
fts_read(FTS *sp)
{
 FTSENT *p, *tmp;
 int instr;
 char *t;
 int saved_errno;


 if (sp->fts_cur == ((void*)0) || ISSET(FTS_STOP))
  return (((void*)0));


 p = sp->fts_cur;


 instr = p->fts_instr;
 p->fts_instr = FTS_NOINSTR;


 if (instr == FTS_AGAIN) {
  p->fts_info = fts_stat(sp, p, 0, -1);
  return (p);
 }







 if (instr == FTS_FOLLOW &&
     (p->fts_info == FTS_SL || p->fts_info == FTS_SLNONE)) {
  p->fts_info = fts_stat(sp, p, 1, -1);
  if (p->fts_info == FTS_D && !ISSET(FTS_NOCHDIR)) {
   if ((p->fts_symfd = _open(".", O_RDONLY | O_CLOEXEC,
       0)) < 0) {
    p->fts_errno = errno;
    p->fts_info = FTS_ERR;
   } else
    p->fts_flags |= FTS_SYMFOLLOW;
  }
  return (p);
 }


 if (p->fts_info == FTS_D) {

  if (instr == FTS_SKIP ||
      (ISSET(FTS_XDEV) && p->fts_dev != sp->fts_dev)) {
   if (p->fts_flags & FTS_SYMFOLLOW)
    (void)_close(p->fts_symfd);
   if (sp->fts_child) {
    fts_lfree(sp->fts_child);
    sp->fts_child = ((void*)0);
   }
   p->fts_info = FTS_DP;
   return (p);
  }


  if (sp->fts_child != ((void*)0) && ISSET(FTS_NAMEONLY)) {
   CLR(FTS_NAMEONLY);
   fts_lfree(sp->fts_child);
   sp->fts_child = ((void*)0);
  }
  if (sp->fts_child != ((void*)0)) {
   if (fts_safe_changedir(sp, p, -1, p->fts_accpath)) {
    p->fts_errno = errno;
    p->fts_flags |= FTS_DONTCHDIR;
    for (p = sp->fts_child; p != ((void*)0);
        p = p->fts_link)
     p->fts_accpath =
         p->fts_parent->fts_accpath;
   }
  } else if ((sp->fts_child = fts_build(sp, BREAD)) == ((void*)0)) {
   if (ISSET(FTS_STOP))
    return (((void*)0));
   return (p);
  }
  p = sp->fts_child;
  sp->fts_child = ((void*)0);
  goto name;
 }


next: tmp = p;
 if ((p = p->fts_link) != ((void*)0)) {




  if (p->fts_level == FTS_ROOTLEVEL) {
   if (FCHDIR(sp, sp->fts_rfd)) {
    SET(FTS_STOP);
    return (((void*)0));
   }
   free(tmp);
   fts_load(sp, p);
   return (sp->fts_cur = p);
  }






  if (p->fts_instr == FTS_SKIP) {
   free(tmp);
   goto next;
  }
  if (p->fts_instr == FTS_FOLLOW) {
   p->fts_info = fts_stat(sp, p, 1, -1);
   if (p->fts_info == FTS_D && !ISSET(FTS_NOCHDIR)) {
    if ((p->fts_symfd =
        _open(".", O_RDONLY | O_CLOEXEC, 0)) < 0) {
     p->fts_errno = errno;
     p->fts_info = FTS_ERR;
    } else
     p->fts_flags |= FTS_SYMFOLLOW;
   }
   p->fts_instr = FTS_NOINSTR;
  }

  free(tmp);

name: t = sp->fts_path + NAPPEND(p->fts_parent);
  *t++ = '/';
  memmove(t, p->fts_name, p->fts_namelen + 1);
  return (sp->fts_cur = p);
 }


 p = tmp->fts_parent;

 if (p->fts_level == FTS_ROOTPARENTLEVEL) {




  free(tmp);
  free(p);
  errno = 0;
  return (sp->fts_cur = ((void*)0));
 }


 sp->fts_path[p->fts_pathlen] = '\0';






 if (p->fts_level == FTS_ROOTLEVEL) {
  if (FCHDIR(sp, sp->fts_rfd)) {
   SET(FTS_STOP);
   return (((void*)0));
  }
 } else if (p->fts_flags & FTS_SYMFOLLOW) {
  if (FCHDIR(sp, p->fts_symfd)) {
   saved_errno = errno;
   (void)_close(p->fts_symfd);
   errno = saved_errno;
   SET(FTS_STOP);
   return (((void*)0));
  }
  (void)_close(p->fts_symfd);
 } else if (!(p->fts_flags & FTS_DONTCHDIR) &&
     fts_safe_changedir(sp, p->fts_parent, -1, "..")) {
  SET(FTS_STOP);
  return (((void*)0));
 }
 free(tmp);
 p->fts_info = p->fts_errno ? FTS_ERR : FTS_DP;
 return (sp->fts_cur = p);
}
