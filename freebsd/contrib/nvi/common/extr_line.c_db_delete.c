
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ recno_t ;
typedef int lno ;
struct TYPE_20__ {int (* del ) (TYPE_4__*,TYPE_3__*,int ) ;} ;
struct TYPE_19__ {scalar_t__* data; int size; } ;
struct TYPE_18__ {scalar_t__ c_lno; scalar_t__ c_nlines; TYPE_4__* db; } ;
struct TYPE_17__ {TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;
typedef TYPE_3__ DBT ;


 int EXM_NOFILEYET ;
 int F_FIRSTMODIFY ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_MODIFIED ;
 int F_SET (TYPE_2__*,int ) ;
 int LINE_DELETE ;
 int LOG_LINE_DELETE ;
 int M_SYSERR ;
 scalar_t__ OOBLNO ;
 int TRACE (TYPE_1__*,char*,int ) ;
 int ex_emsg (TYPE_1__*,int *,int ) ;
 scalar_t__ ex_g_insdel (TYPE_1__*,int ,scalar_t__) ;
 int log_line (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ mark_insdel (TYPE_1__*,int ,scalar_t__) ;
 int msgq (TYPE_1__*,int ,char*,int ) ;
 int rcv_init (TYPE_1__*) ;
 int scr_update (TYPE_1__*,scalar_t__,int ,int) ;
 int stub1 (TYPE_4__*,TYPE_3__*,int ) ;

int
db_delete(
 SCR *sp,
 recno_t lno)
{
 DBT key;
 EXF *ep;





 if ((ep = sp->ep) == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOFILEYET);
  return (1);
 }


 if (mark_insdel(sp, LINE_DELETE, lno))
  return (1);
 if (ex_g_insdel(sp, LINE_DELETE, lno))
  return (1);


 log_line(sp, lno, LOG_LINE_DELETE);


 key.data = &lno;
 key.size = sizeof(lno);
 if (ep->db->del(ep->db, &key, 0) == 1) {
  msgq(sp, M_SYSERR,
      "003|unable to delete line %lu", (u_long)lno);
  return (1);
 }


 if (lno <= ep->c_lno)
  ep->c_lno = OOBLNO;
 if (ep->c_nlines != OOBLNO)
  --ep->c_nlines;


 if (F_ISSET(ep, F_FIRSTMODIFY))
  (void)rcv_init(sp);
 F_SET(ep, F_MODIFIED);


 return (scr_update(sp, lno, LINE_DELETE, 1));
}
