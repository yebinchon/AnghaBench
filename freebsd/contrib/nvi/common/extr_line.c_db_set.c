
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
struct TYPE_20__ {int (* put ) (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;} ;
struct TYPE_19__ {scalar_t__* data; int size; } ;
struct TYPE_18__ {scalar_t__ c_lno; TYPE_4__* db; } ;
struct TYPE_17__ {TYPE_2__* ep; } ;
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
 int LINE_RESET ;
 int LOG_LINE_RESET_B ;
 int LOG_LINE_RESET_F ;
 int MIN (size_t,int) ;
 int M_SYSERR ;
 scalar_t__ OOBLNO ;
 int TRACE (TYPE_1__*,char*,int ,int ,int ,int *) ;
 int ex_emsg (TYPE_1__*,int *,int ) ;
 int log_line (TYPE_1__*,scalar_t__,int ) ;
 int msgq (TYPE_1__*,int ,char*,int ) ;
 int rcv_init (TYPE_1__*) ;
 int scr_update (TYPE_1__*,scalar_t__,int ,int) ;
 int stub1 (TYPE_4__*,TYPE_3__*,TYPE_3__*,int ) ;

int
db_set(
 SCR *sp,
 recno_t lno,
 CHAR_T *p,
 size_t len)
{
 DBT data, key;
 EXF *ep;
 char *fp;
 size_t flen;






 if ((ep = sp->ep) == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOFILEYET);
  return (1);
 }


 log_line(sp, lno, LOG_LINE_RESET_B);

 INT2FILE(sp, p, len, fp, flen);


 key.data = &lno;
 key.size = sizeof(lno);
 data.data = fp;
 data.size = flen;
 if (ep->db->put(ep->db, &key, &data, 0) == -1) {
  msgq(sp, M_SYSERR,
      "006|unable to store line %lu", (u_long)lno);
  return (1);
 }


 if (lno == ep->c_lno)
  ep->c_lno = OOBLNO;


 if (F_ISSET(ep, F_FIRSTMODIFY))
  (void)rcv_init(sp);
 F_SET(ep, F_MODIFIED);


 log_line(sp, lno, LOG_LINE_RESET_F);


 return (scr_update(sp, lno, LINE_RESET, 1));
}
