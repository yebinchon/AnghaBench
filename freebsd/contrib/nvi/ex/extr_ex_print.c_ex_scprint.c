
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cno; int lno; } ;
typedef int SCR ;
typedef TYPE_1__ MARK ;
typedef int CHAR_T ;


 int DBG_FATAL ;
 scalar_t__ INTERRUPTED (int *) ;
 int * L (char*) ;
 scalar_t__ O_ISSET (int *,int ) ;
 int O_NUMBER ;
 scalar_t__ db_get (int *,int ,int ,int **,size_t*) ;
 int ex_fflush (int *) ;
 scalar_t__ ex_prchars (int *,int *,size_t*,int,int ,char) ;

int
ex_scprint(SCR *sp, MARK *fp, MARK *tp)
{
 CHAR_T *p;
 size_t col, len;

 col = 0;
 if (O_ISSET(sp, O_NUMBER)) {
  p = L("        ");
  if (ex_prchars(sp, p, &col, 8, 0, 0))
   return (1);
 }

 if (db_get(sp, fp->lno, DBG_FATAL, &p, &len))
  return (1);

 if (ex_prchars(sp, p, &col, fp->cno, 0, ' '))
  return (1);
 p += fp->cno;
 if (ex_prchars(sp,
     p, &col, tp->cno == fp->cno ? 1 : tp->cno - fp->cno, 0, '^'))
  return (1);
 if (INTERRUPTED(sp))
  return (1);
 p = L("[ynq]");
 if (ex_prchars(sp, p, &col, 5, 0, 0))
  return (1);
 (void)ex_fflush(sp);
 return (0);
}
