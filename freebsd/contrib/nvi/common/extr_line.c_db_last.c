
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
typedef int lno ;
struct TYPE_18__ {int (* seq ) (TYPE_5__*,TYPE_4__*,TYPE_4__*,int ) ;} ;
struct TYPE_17__ {scalar_t__* data; int size; } ;
struct TYPE_16__ {scalar_t__ c_nlines; scalar_t__ c_lno; scalar_t__* c_lp; size_t c_len; int c_blen; TYPE_5__* db; } ;
struct TYPE_15__ {int tiq; TYPE_3__* ep; } ;
struct TYPE_14__ {scalar_t__ lno; } ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXF ;
typedef TYPE_4__ DBT ;
typedef scalar_t__ CHAR_T ;


 int BINC_GOTOW (TYPE_2__*,scalar_t__*,int ,size_t) ;
 int EXM_NOFILEYET ;
 int FILE2INT (TYPE_2__*,scalar_t__*,int,scalar_t__*,size_t) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int MEMCPY (scalar_t__*,scalar_t__*,size_t) ;
 int M_SYSERR ;
 scalar_t__ OOBLNO ;
 int R_LAST ;
 int SC_TINPUT ;
 scalar_t__ TAILQ_FIRST (int ) ;
 scalar_t__ TAILQ_LAST (int ,int ) ;
 int _texth ;
 int ex_emsg (TYPE_2__*,int *,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int stub1 (TYPE_5__*,TYPE_4__*,TYPE_4__*,int ) ;

int
db_last(
 SCR *sp,
 recno_t *lnop)
{
 DBT data, key;
 EXF *ep;
 recno_t lno;
 CHAR_T *wp;
 size_t wlen;


 if ((ep = sp->ep) == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOFILEYET);
  return (1);
 }





 if (ep->c_nlines != OOBLNO) {
  *lnop = ep->c_nlines;
  if (F_ISSET(sp, SC_TINPUT))
   *lnop += ((TEXT *)TAILQ_LAST(sp->tiq, _texth))->lno -
       ((TEXT *)TAILQ_FIRST(sp->tiq))->lno;
  return (0);
 }

 key.data = &lno;
 key.size = sizeof(lno);

 switch (ep->db->seq(ep->db, &key, &data, R_LAST)) {
 case -1:
alloc_err:
  msgq(sp, M_SYSERR, "007|unable to get last line");
  *lnop = 0;
  return (1);
 case 1:
  *lnop = 0;
  return (0);
 }

 memcpy(&lno, key.data, sizeof(lno));

 if (lno != ep->c_lno) {
  FILE2INT(sp, data.data, data.size, wp, wlen);


  if (wp != data.data) {
   BINC_GOTOW(sp, ep->c_lp, ep->c_blen, wlen);
   MEMCPY(ep->c_lp, wp, wlen);
  } else
   ep->c_lp = data.data;
  ep->c_lno = lno;
  ep->c_len = wlen;
 }
 ep->c_nlines = lno;


 *lnop = (F_ISSET(sp, SC_TINPUT) &&
     ((TEXT *)TAILQ_LAST(sp->tiq, _texth))->lno > lno ?
     ((TEXT *)TAILQ_LAST(sp->tiq, _texth))->lno : lno);
 return (0);
}
