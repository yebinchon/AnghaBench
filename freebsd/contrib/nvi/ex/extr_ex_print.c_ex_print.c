
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int recno_t ;
struct TYPE_13__ {int lno; } ;
struct TYPE_12__ {int * gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef int GS ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int DBG_FATAL ;
 int E_C_HASH ;
 int E_C_LIST ;
 scalar_t__ INTERRUPTED (TYPE_1__*) ;
 int * L (char*) ;
 scalar_t__ LF_ISSET (int ) ;
 int NEEDFILE (TYPE_1__*,int *) ;
 int SIZE (int *) ;
 int SPRINTF (int *,int ,int *,int) ;
 scalar_t__ db_get (TYPE_1__*,int,int ,int **,size_t*) ;
 scalar_t__ ex_ldisplay (TYPE_1__*,int *,size_t,size_t,int ) ;
 scalar_t__ ex_prchars (TYPE_1__*,int *,size_t*,int,int ,int ) ;
 int ex_puts (TYPE_1__*,char*) ;

int
ex_print(SCR *sp, EXCMD *cmdp, MARK *fp, MARK *tp, u_int32_t flags)
{
 GS *gp;
 recno_t from, to;
 size_t col, len;
 CHAR_T *p;
 CHAR_T buf[10];

 NEEDFILE(sp, cmdp);

 gp = sp->gp;
 for (from = fp->lno, to = tp->lno; from <= to; ++from) {
  col = 0;






  if (LF_ISSET(E_C_HASH)) {
   if (from <= 999999) {
    SPRINTF(buf, SIZE(buf), L("%6u  "), from);
    p = buf;
   } else
    p = L("TOOBIG  ");
   if (ex_prchars(sp, p, &col, 8, 0, 0))
    return (1);
  }






  if (db_get(sp, from, DBG_FATAL, &p, &len))
   return (1);

  if (len == 0 && !LF_ISSET(E_C_LIST))
   (void)ex_puts(sp, "\n");
  else if (ex_ldisplay(sp, p, len, col, flags))
   return (1);

  if (INTERRUPTED(sp))
   break;
 }
 return (0);
}
