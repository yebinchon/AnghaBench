
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;
typedef int CHAR_T ;


 int FREE_SPACEW (int *,int *,size_t) ;
 int GET_SPACE_RETW (int *,int *,size_t,int) ;
 scalar_t__ IS_SHELLMETA (int *,int ) ;
 int MEMCPY (int *,int ,size_t) ;
 int O_SHELL ;
 int O_SHELLMETA ;
 int SHELLECHO ;
 size_t SHELLOFFSET ;
 int TRACE (int *,char*,size_t,int *) ;
 int argv_exp3 (int *,int *,int *,size_t) ;
 scalar_t__ argv_fexp (int *,int *,int *,size_t,int *,size_t*,int **,size_t*,int ) ;
 int argv_sexp (int *,int **,size_t*,size_t*) ;
 scalar_t__ opts_empty (int *,int ,int) ;

int
argv_exp2(SCR *sp, EXCMD *excp, CHAR_T *cmd, size_t cmdlen)
{
 size_t blen, len, n;
 int rval;
 CHAR_T *bp, *p;

 GET_SPACE_RETW(sp, bp, blen, 512);



 MEMCPY(bp, L("echo "), (SIZE(L("echo ")) - 1));
 p = bp + (SIZE(L("echo ")) - 1);
 len = (SIZE(L("echo ")) - 1);





 if (argv_fexp(sp, excp, cmd, cmdlen, p, &len, &bp, &blen, 0)) {
  rval = 1;
  goto err;
 }
 if (opts_empty(sp, O_SHELL, 1) || opts_empty(sp, O_SHELLMETA, 1))
  n = 0;
 else {
  p = bp + (SIZE(L("echo ")) - 1);
  n = len - (SIZE(L("echo ")) - 1);
  for (; n > 0; --n, ++p)
   if (IS_SHELLMETA(sp, *p))
    break;
 }
 switch (n) {
 case 0:
  p = bp + (SIZE(L("echo ")) - 1);
  len -= (SIZE(L("echo ")) - 1);
  rval = argv_exp3(sp, excp, p, len);
  break;
 default:
  if (argv_sexp(sp, &bp, &blen, &len)) {
   rval = 1;
   goto err;
  }
  p = bp;
  rval = argv_exp3(sp, excp, p, len);
  break;
 }

err: FREE_SPACEW(sp, bp, blen);
 return (rval);
}
