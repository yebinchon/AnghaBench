
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* close ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int lno; scalar_t__ cno; } ;
struct TYPE_6__ {int l_high; int l_cur; TYPE_1__ l_cursor; scalar_t__ l_len; int * l_lp; TYPE_3__* log; } ;
typedef int SCR ;
typedef TYPE_2__ EXF ;


 int free (int *) ;
 int stub1 (TYPE_3__*) ;

int
log_end(
 SCR *sp,
 EXF *ep)
{




 if (ep->log != ((void*)0)) {
  (void)(ep->log->close)(ep->log);
  ep->log = ((void*)0);
 }
 if (ep->l_lp != ((void*)0)) {
  free(ep->l_lp);
  ep->l_lp = ((void*)0);
 }
 ep->l_len = 0;
 ep->l_cursor.lno = 1;
 ep->l_cursor.cno = 0;
 ep->l_high = ep->l_cur = 1;
 return (0);
}
