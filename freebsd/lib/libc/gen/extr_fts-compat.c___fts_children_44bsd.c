
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* fts_child; TYPE_1__* fts_cur; } ;
struct TYPE_7__ {scalar_t__ fts_info; scalar_t__ fts_level; char* fts_accpath; struct TYPE_7__* fts_link; } ;
typedef TYPE_1__ FTSENT ;
typedef TYPE_2__ FTS ;


 int BCHILD ;
 int BNAMES ;
 scalar_t__ EINVAL ;
 scalar_t__ FTS_D ;
 scalar_t__ FTS_INIT ;
 int FTS_NAMEONLY ;
 int FTS_NOCHDIR ;
 scalar_t__ FTS_ROOTLEVEL ;
 int FTS_STOP ;
 scalar_t__ ISSET (int ) ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int SET (int) ;
 int _close (int) ;
 int _open (char*,int,int ) ;
 scalar_t__ errno ;
 scalar_t__ fchdir (int) ;
 void* fts_build (TYPE_2__*,int) ;
 int fts_lfree (TYPE_1__*) ;

FTSENT *
__fts_children_44bsd(FTS *sp, int instr)
{
 FTSENT *p;
 int fd;

 if (instr != 0 && instr != FTS_NAMEONLY) {
  errno = EINVAL;
  return (((void*)0));
 }


 p = sp->fts_cur;





 errno = 0;


 if (ISSET(FTS_STOP))
  return (((void*)0));


 if (p->fts_info == FTS_INIT)
  return (p->fts_link);






 if (p->fts_info != FTS_D )
  return (((void*)0));


 if (sp->fts_child != ((void*)0))
  fts_lfree(sp->fts_child);

 if (instr == FTS_NAMEONLY) {
  SET(FTS_NAMEONLY);
  instr = BNAMES;
 } else
  instr = BCHILD;
 if (p->fts_level != FTS_ROOTLEVEL || p->fts_accpath[0] == '/' ||
     ISSET(FTS_NOCHDIR))
  return (sp->fts_child = fts_build(sp, instr));

 if ((fd = _open(".", O_RDONLY | O_CLOEXEC, 0)) < 0)
  return (((void*)0));
 sp->fts_child = fts_build(sp, instr);
 if (fchdir(fd)) {
  (void)_close(fd);
  return (((void*)0));
 }
 (void)_close(fd);
 return (sp->fts_child);
}
