
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fts_level; int fts_rfd; struct TYPE_5__* fts_path; struct TYPE_5__* fts_array; scalar_t__ fts_child; struct TYPE_5__* fts_parent; struct TYPE_5__* fts_link; struct TYPE_5__* fts_cur; } ;
typedef TYPE_1__ FTSENT11 ;
typedef TYPE_1__ FTS11 ;


 int FTS_NOCHDIR ;
 scalar_t__ FTS_ROOTLEVEL ;
 int ISSET (int ) ;
 int _close (int ) ;
 int errno ;
 scalar_t__ fchdir (int ) ;
 int free (TYPE_1__*) ;
 int fts_lfree (scalar_t__) ;

int
freebsd11_fts_close(FTS11 *sp)
{
 FTSENT11 *freep, *p;
 int saved_errno;






 if (sp->fts_cur) {
  for (p = sp->fts_cur; p->fts_level >= FTS_ROOTLEVEL;) {
   freep = p;
   p = p->fts_link != ((void*)0) ? p->fts_link : p->fts_parent;
   free(freep);
  }
  free(p);
 }


 if (sp->fts_child)
  fts_lfree(sp->fts_child);
 if (sp->fts_array)
  free(sp->fts_array);
 free(sp->fts_path);


 if (!ISSET(FTS_NOCHDIR)) {
  saved_errno = fchdir(sp->fts_rfd) ? errno : 0;
  (void)_close(sp->fts_rfd);


  if (saved_errno != 0) {

   free(sp);
   errno = saved_errno;
   return (-1);
  }
 }


 free(sp);
 return (0);
}
