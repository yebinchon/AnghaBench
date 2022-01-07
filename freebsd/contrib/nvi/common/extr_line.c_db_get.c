
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int32_t ;
typedef scalar_t__ recno_t ;
typedef int lno ;
struct TYPE_24__ {int (* get ) (TYPE_5__*,TYPE_4__*,TYPE_4__*,int ) ;} ;
struct TYPE_23__ {scalar_t__* data; int size; } ;
struct TYPE_22__ {scalar_t__ c_lno; size_t c_len; scalar_t__* c_lp; int c_blen; TYPE_5__* db; } ;
struct TYPE_21__ {int tiq; TYPE_3__* ep; } ;
struct TYPE_20__ {scalar_t__ lno; size_t len; scalar_t__* lb; } ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXF ;
typedef TYPE_4__ DBT ;
typedef scalar_t__ CHAR_T ;


 int BINC_GOTOW (TYPE_2__*,scalar_t__*,int ,size_t) ;
 int DBG_FATAL ;
 int DBG_NOCACHE ;
 int EXM_NOFILEYET ;
 scalar_t__ FILE2INT (TYPE_2__*,scalar_t__*,int,scalar_t__*,size_t) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__ LF_ISSET (int ) ;
 int MEMCPY (scalar_t__*,scalar_t__*,size_t) ;
 int M_ERR ;
 scalar_t__ OOBLNO ;
 int SC_CONV_ERROR ;
 int SC_TINPUT ;
 TYPE_1__* TAILQ_FIRST (int ) ;
 scalar_t__ TAILQ_LAST (int ,int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TRACE (TYPE_2__*,char*,int ) ;
 int _texth ;
 int db_err (TYPE_2__*,scalar_t__) ;
 int ex_emsg (TYPE_2__*,int *,int ) ;
 int msgq (TYPE_2__*,int ,char*,scalar_t__) ;
 int q ;
 int stub1 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int ) ;

int
db_get(
 SCR *sp,
 recno_t lno,
 u_int32_t flags,
 CHAR_T **pp,
 size_t *lenp)
{
 DBT data, key;
 EXF *ep;
 TEXT *tp;
 recno_t l1, l2;
 CHAR_T *wp;
 size_t wlen;






 if (lno == 0)
  goto err1;


 if ((ep = sp->ep) == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOFILEYET);
  goto err3;
 }

 if (LF_ISSET(DBG_NOCACHE))
  goto nocache;





 if (F_ISSET(sp, SC_TINPUT)) {
  l1 = ((TEXT *)TAILQ_FIRST(sp->tiq))->lno;
  l2 = ((TEXT *)TAILQ_LAST(sp->tiq, _texth))->lno;
  if (l1 <= lno && l2 >= lno) {



   for (tp = TAILQ_FIRST(sp->tiq);
       tp->lno != lno; tp = TAILQ_NEXT(tp, q));
   if (lenp != ((void*)0))
    *lenp = tp->len;
   if (pp != ((void*)0))
    *pp = tp->lb;
   return (0);
  }




  if (lno > l2)
   lno -= l2 - l1;
 }


 if (lno == ep->c_lno) {



  if (lenp != ((void*)0))
   *lenp = ep->c_len;
  if (pp != ((void*)0))
   *pp = ep->c_lp;
  return (0);
 }
 ep->c_lno = OOBLNO;

nocache:

 key.data = &lno;
 key.size = sizeof(lno);
 switch (ep->db->get(ep->db, &key, &data, 0)) {
 case -1:
  goto err2;
 case 1:
err1: if (LF_ISSET(DBG_FATAL))
err2: db_err(sp, lno);
alloc_err:
err3: if (lenp != ((void*)0))
   *lenp = 0;
  if (pp != ((void*)0))
   *pp = ((void*)0);
  return (1);
 }

 if (FILE2INT(sp, data.data, data.size, wp, wlen)) {
  if (!F_ISSET(sp, SC_CONV_ERROR)) {
   F_SET(sp, SC_CONV_ERROR);
   msgq(sp, M_ERR, "324|Conversion error on line %d", lno);
  }
  goto err3;
 }


 if (wp != data.data) {
  BINC_GOTOW(sp, ep->c_lp, ep->c_blen, wlen);
  MEMCPY(ep->c_lp, wp, wlen);
 } else
  ep->c_lp = data.data;
 ep->c_lno = lno;
 ep->c_len = wlen;




 if (lenp != ((void*)0))
  *lenp = wlen;
 if (pp != ((void*)0))
  *pp = ep->c_lp;
 return (0);
}
