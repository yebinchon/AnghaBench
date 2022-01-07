
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
typedef int recno_t ;
struct TYPE_20__ {int (* put ) (TYPE_5__*,TYPE_4__*,TYPE_4__*,int ) ;} ;
struct TYPE_19__ {int* data; int size; } ;
struct TYPE_16__ {scalar_t__ lno; } ;
struct TYPE_18__ {int* l_lp; int l_cur; int l_high; TYPE_5__* log; int l_len; TYPE_1__ l_cursor; } ;
struct TYPE_17__ {TYPE_3__* ep; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXF ;
typedef TYPE_4__ DBT ;
typedef int CHAR_T ;


 int BINC_RETC (TYPE_2__*,int*,int ,int) ;
 int CHAR_T_OFFSET ;
 int DBG_FATAL ;
 int DBG_NOCACHE ;
 int F_CLR (TYPE_3__*,int ) ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_NOLOG ;
 int F_UNDO ;
 int* L (char*) ;
 int LOG_CURSOR_INIT ;
 int LOG_ERR ;





 scalar_t__ OOBLNO ;
 int TRACE (TYPE_2__*,char*,int,int,size_t) ;
 int db_err (TYPE_2__*,int) ;
 scalar_t__ db_get (TYPE_2__*,int,int ,int**,size_t*) ;
 scalar_t__ log_cursor1 (TYPE_2__*,int ) ;
 int memmove (int*,int*,size_t) ;
 int stub1 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int ) ;

int
log_line(
 SCR *sp,
 recno_t lno,
 u_int action)
{
 DBT data, key;
 EXF *ep;
 size_t len;
 CHAR_T *lp;
 recno_t lcur;

 ep = sp->ep;
 if (F_ISSET(ep, F_NOLOG))
  return (0);







 F_CLR(ep, F_UNDO);


 if (ep->l_cursor.lno != OOBLNO) {
  if (log_cursor1(sp, LOG_CURSOR_INIT))
   return (1);
  ep->l_cursor.lno = OOBLNO;
 }







 if (action == 129) {
  if (db_get(sp, lno, DBG_NOCACHE, &lp, &len)) {
   if (lno != 1) {
    db_err(sp, lno);
    return (1);
   }
   len = 0;
   lp = L("");
  }
 } else
  if (db_get(sp, lno, DBG_FATAL, &lp, &len))
   return (1);
 BINC_RETC(sp,
     ep->l_lp, ep->l_len,
     len * sizeof(CHAR_T) + CHAR_T_OFFSET);
 ep->l_lp[0] = action;
 memmove(ep->l_lp + sizeof(u_char), &lno, sizeof(recno_t));
 memmove(ep->l_lp + CHAR_T_OFFSET, lp, len * sizeof(CHAR_T));

 lcur = ep->l_cur;
 key.data = &lcur;
 key.size = sizeof(recno_t);
 data.data = ep->l_lp;
 data.size = len * sizeof(CHAR_T) + CHAR_T_OFFSET;
 if (ep->log->put(ep->log, &key, &data, 0) == -1)
  LOG_ERR;
 ep->l_high = ++ep->l_cur;

 return (0);
}
