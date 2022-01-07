
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ibp; int ibcw; } ;
typedef int SCR ;
typedef int FILE ;
typedef TYPE_1__ EX_PRIVATE ;
typedef int CHAR_T ;


 TYPE_1__* EXP (int *) ;
 int FILE2INT5 (int *,int ,int ,size_t,int *,size_t) ;
 int INTERRUPTED (int *) ;
 int M_SYSERR ;
 int ex_getline (int *,int *,size_t*) ;
 scalar_t__ ex_ldisplay (int *,int *,size_t,int ,int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int msgq (int *,int ,char*) ;

__attribute__((used)) static int
filter_ldisplay(SCR *sp, FILE *fp)
{
 size_t len;
 size_t wlen;
 CHAR_T *wp;

 EX_PRIVATE *exp;

 for (exp = EXP(sp); !ex_getline(sp, fp, &len) && !INTERRUPTED(sp);) {
  FILE2INT5(sp, exp->ibcw, exp->ibp, len, wp, wlen);
  if (ex_ldisplay(sp, wp, wlen, 0, 0))
   break;
 }
 if (ferror(fp))
  msgq(sp, M_SYSERR, "filter read");
 (void)fclose(fp);
 return (0);
}
