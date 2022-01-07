
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ recno_t ;
typedef int lno ;
struct TYPE_22__ {int (* put ) (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;} ;
struct TYPE_21__ {scalar_t__* data; int size; } ;
struct TYPE_20__ {scalar_t__ c_lno; scalar_t__ c_nlines; TYPE_4__* db; } ;
struct TYPE_19__ {TYPE_2__* ep; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ EXF ;
typedef TYPE_3__ DBT ;
typedef int CHAR_T ;


 int EXM_NOFILEYET ;
 int F_FIRSTMODIFY ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_MODIFIED ;
 int F_SET (TYPE_2__*,int ) ;
 int INT2FILE (TYPE_1__*,int *,size_t,char*,size_t) ;
 int LINE_APPEND ;
 int LINE_INSERT ;
 int LOG_LINE_APPEND ;
 int MIN (size_t,int) ;
 int M_SYSERR ;
 scalar_t__ OOBLNO ;
 int R_IAFTER ;
 int TRACE (TYPE_1__*,char*,scalar_t__,size_t,int ,int *) ;
 int ex_emsg (TYPE_1__*,int *,int ) ;
 scalar_t__ ex_g_insdel (TYPE_1__*,int ,scalar_t__) ;
 int log_line (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ mark_insdel (TYPE_1__*,int ,scalar_t__) ;
 int msgq (TYPE_1__*,int ,char*,int ) ;
 int rcv_init (TYPE_1__*) ;
 scalar_t__ scr_update (TYPE_1__*,scalar_t__,int ,int) ;
 int stub1 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;

int
db_append(
 SCR *sp,
 int update,
 recno_t lno,
 CHAR_T *p,
 size_t len)
{
 DBT data, key;
 EXF *ep;
 char *fp;
 size_t flen;
 int rval;





 if ((ep = sp->ep) == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOFILEYET);
  return (1);
 }

 INT2FILE(sp, p, len, fp, flen);


 key.data = &lno;
 key.size = sizeof(lno);
 data.data = fp;
 data.size = flen;
 if (ep->db->put(ep->db, &key, &data, R_IAFTER) == -1) {
  msgq(sp, M_SYSERR,
      "004|unable to append to line %lu", (u_long)lno);
  return (1);
 }


 if (lno < ep->c_lno)
  ep->c_lno = OOBLNO;
 if (ep->c_nlines != OOBLNO)
  ++ep->c_nlines;


 if (F_ISSET(ep, F_FIRSTMODIFY))
  (void)rcv_init(sp);
 F_SET(ep, F_MODIFIED);


 log_line(sp, lno + 1, LOG_LINE_APPEND);


 rval = 0;
 if (mark_insdel(sp, LINE_INSERT, lno + 1))
  rval = 1;
 if (ex_g_insdel(sp, LINE_INSERT, lno + 1))
  rval = 1;
 return (scr_update(sp, lno, LINE_APPEND, update) || rval);
}
