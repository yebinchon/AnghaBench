
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_4__ {size_t ai; size_t len; int * lb; int lb_len; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef int CHAR_T ;


 int BINC_RETW (int *,int *,int ,int ) ;
 int DBG_FATAL ;
 int MEMMOVE (int *,int *,size_t) ;
 scalar_t__ db_get (int *,scalar_t__,int ,int **,size_t*) ;
 int isblank (int ) ;

int
v_txt_auto(SCR *sp, recno_t lno, TEXT *aitp, size_t len, TEXT *tp)
{
 size_t nlen;
 CHAR_T *p, *t;

 if (aitp == ((void*)0)) {





  if (lno == 0) {
   tp->ai = 0;
   return (0);
  }
  if (db_get(sp, lno, DBG_FATAL, &t, &len))
   return (1);
 } else
  t = aitp->lb;


 for (p = t; len > 0; ++p, --len)
  if (!isblank(*p))
   break;


 if ((nlen = (p - t)) == 0)
  return (0);


 BINC_RETW(sp, tp->lb, tp->lb_len, tp->len + nlen);


 if (tp->len != 0)
  MEMMOVE(tp->lb + nlen, tp->lb, tp->len);
 tp->len += nlen;


 MEMMOVE(tp->lb, t, nlen);


 tp->ai = nlen;
 return (0);
}
