
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_7__ {size_t len; int textq; } ;
struct TYPE_6__ {size_t len; int lb; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef int CHAR_T ;
typedef TYPE_2__ CB ;


 int DBG_FATAL ;
 size_t ENTIRE_LINE ;
 int MEMCPY (int ,int *,size_t) ;
 int TAILQ_INSERT_TAIL (int ,TYPE_1__*,int ) ;
 scalar_t__ db_get (int *,int ,int ,int **,size_t*) ;
 int q ;
 TYPE_1__* text_init (int *,int *,int ,size_t) ;

int
cut_line(
 SCR *sp,
 recno_t lno,
 size_t fcno,
 size_t clen,
 CB *cbp)
{
 TEXT *tp;
 size_t len;
 CHAR_T *p;


 if (db_get(sp, lno, DBG_FATAL, &p, &len))
  return (1);


 if ((tp = text_init(sp, ((void*)0), 0, len)) == ((void*)0))
  return (1);





 if (len != 0) {
  if (clen == ENTIRE_LINE)
   clen = len - fcno;
  MEMCPY(tp->lb, p + fcno, clen);
  tp->len = clen;
 }


 TAILQ_INSERT_TAIL(cbp->textq, tp, q);
 cbp->len += tp->len;

 return (0);
}
