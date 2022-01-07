
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int lno; scalar_t__ cno; } ;
struct TYPE_16__ {scalar_t__ searchdir; int lno; scalar_t__ cno; } ;
struct TYPE_15__ {int slno; int slen; int * search; } ;
struct TYPE_14__ {int tag; } ;
typedef TYPE_1__ TAGQ ;
typedef TYPE_2__ TAG ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ MARK ;


 scalar_t__ FORWARD ;
 scalar_t__ NOTSET ;
 int SEARCH_CSCOPE ;
 int SEARCH_FILE ;
 int TAG_BADLNO ;
 int TAG_SEARCH ;
 int db_exist (TYPE_3__*,int) ;
 scalar_t__ f_search (TYPE_3__*,TYPE_4__*,TYPE_4__*,int *,int ,int *,int) ;
 int nonblank (TYPE_3__*,int,scalar_t__*) ;
 int tag_msg (TYPE_3__*,int ,int ) ;

int
cscope_search(SCR *sp, TAGQ *tqp, TAG *tp)
{
 MARK m;


 if (tp->search == ((void*)0)) {
  if (!db_exist(sp, tp->slno)) {
   tag_msg(sp, TAG_BADLNO, tqp->tag);
   return (1);
  }
  m.lno = tp->slno;
 } else {




  m.lno = 1;
  m.cno = 0;
  if (f_search(sp, &m, &m,
      tp->search, tp->slen, ((void*)0), SEARCH_CSCOPE | SEARCH_FILE)) {
   tag_msg(sp, TAG_SEARCH, tqp->tag);
   return (1);
  }






  if (sp->searchdir == NOTSET)
   sp->searchdir = FORWARD;
 }





 sp->lno = m.lno;
 sp->cno = 0;
 (void)nonblank(sp, sp->lno, &sp->cno);
 return (0);
}
