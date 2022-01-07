
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_char ;
typedef int recno_t ;
struct TYPE_21__ {int (* put ) (TYPE_6__*,TYPE_5__*,TYPE_5__*,int ) ;} ;
struct TYPE_20__ {int size; scalar_t__* data; } ;
struct TYPE_16__ {scalar_t__ lno; } ;
struct TYPE_19__ {scalar_t__ l_cur; scalar_t__ l_high; TYPE_6__* log; scalar_t__* l_lp; int l_len; TYPE_1__ l_cursor; } ;
struct TYPE_18__ {int cno; int lno; int name; } ;
struct TYPE_17__ {TYPE_4__* ep; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ LMARK ;
typedef TYPE_4__ EXF ;
typedef TYPE_5__ DBT ;


 int BINC_RETC (TYPE_2__*,scalar_t__*,int ,int) ;
 scalar_t__ F_ISSET (TYPE_4__*,int ) ;
 int F_NOLOG ;
 int LOG_CURSOR_INIT ;
 int LOG_ERR ;
 scalar_t__ LOG_MARK ;
 scalar_t__ OOBLNO ;
 int TRACE (TYPE_2__*,char*,scalar_t__,int ,int ,int ) ;
 scalar_t__ log_cursor1 (TYPE_2__*,int ) ;
 int memmove (scalar_t__*,TYPE_3__*,int) ;
 int stub1 (TYPE_6__*,TYPE_5__*,TYPE_5__*,int ) ;

int
log_mark(
 SCR *sp,
 LMARK *lmp)
{
 DBT data, key;
 EXF *ep;

 ep = sp->ep;
 if (F_ISSET(ep, F_NOLOG))
  return (0);


 if (ep->l_cursor.lno != OOBLNO) {
  if (log_cursor1(sp, LOG_CURSOR_INIT))
   return (1);
  ep->l_cursor.lno = OOBLNO;
 }

 BINC_RETC(sp, ep->l_lp,
     ep->l_len, sizeof(u_char) + sizeof(LMARK));
 ep->l_lp[0] = LOG_MARK;
 memmove(ep->l_lp + sizeof(u_char), lmp, sizeof(LMARK));

 key.data = &ep->l_cur;
 key.size = sizeof(recno_t);
 data.data = ep->l_lp;
 data.size = sizeof(u_char) + sizeof(LMARK);
 if (ep->log->put(ep->log, &key, &data, 0) == -1)
  LOG_ERR;






 ep->l_high = ++ep->l_cur;
 return (0);
}
