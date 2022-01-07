
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t owrite; size_t insert; scalar_t__ len; scalar_t__ cno; scalar_t__ lb; int lno; scalar_t__ R_erase; } ;
typedef int TEXTH ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef int CHAR_T ;


 int DBG_FATAL ;
 int DBG_NOCACHE ;
 int MEMCPY (scalar_t__,int *,size_t) ;
 size_t MIN (size_t,size_t const) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 scalar_t__ db_get (int *,int ,int,int **,int *) ;
 int q ;

__attribute__((used)) static void
txt_Rresolve(SCR *sp, TEXTH *tiqh, TEXT *tp, const size_t orig_len)
{
 TEXT *ttp;
 size_t input_len, retain;
 CHAR_T *p;





 if (tp->owrite == 0)
  return;





 for (ttp = TAILQ_FIRST(tiqh), input_len = 0;;) {
  input_len += ttp == tp ? tp->cno : ttp->len + ttp->R_erase;
  if ((ttp = TAILQ_NEXT(ttp, q)) == ((void*)0))
   break;
 }
 if (input_len < orig_len) {
  retain = MIN(tp->owrite, orig_len - input_len);
  if (db_get(sp,
      TAILQ_FIRST(tiqh)->lno, DBG_FATAL | DBG_NOCACHE, &p, ((void*)0)))
   return;
  MEMCPY(tp->lb + tp->cno, p + input_len, retain);
  tp->len -= tp->owrite - retain;
  tp->owrite = 0;
  tp->insert += retain;
 }
}
