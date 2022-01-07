
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EX_PRIVATE ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int * EXP (int *) ;
 int FREE_SPACEW (int *,int *,size_t) ;
 int GET_SPACE_RETW (int *,int *,size_t,int) ;
 int argv_exp0 (int *,int *,int *,size_t) ;
 scalar_t__ argv_fexp (int *,int *,int *,size_t,int *,size_t*,int **,size_t*,int) ;
 int cmdskip (int ) ;

int
argv_exp1(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen, int is_bang)
{
 EX_PRIVATE *exp;
 size_t blen, len;
 CHAR_T *p, *t, *bp;

 GET_SPACE_RETW(sp, bp, blen, 512);

 len = 0;
 exp = EXP(sp);
 if (argv_fexp(sp, excp, cmd, cmdlen, bp, &len, &bp, &blen, is_bang)) {
  FREE_SPACEW(sp, bp, blen);
  return (1);
 }


 if (len != 0) {
  for (p = bp, t = bp + len; p < t; ++p)
   if (!cmdskip(*p))
    break;
  if (p == t)
   goto ret;
 } else
  goto ret;

 (void)argv_exp0(sp, excp, bp, len);

ret: FREE_SPACEW(sp, bp, blen);
 return (0);
}
