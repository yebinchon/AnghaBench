
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obp_len; char* obp; } ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;


 TYPE_1__* EXP (int *) ;
 int ex_fflush (int *) ;

int
ex_puts(SCR *sp, const char *str)
{
 EX_PRIVATE *exp;
 int doflush, n;

 exp = EXP(sp);


 for (doflush = n = 0; *str != '\0'; ++n) {
  if (exp->obp_len > sizeof(exp->obp))
   (void)ex_fflush(sp);
  if ((exp->obp[exp->obp_len++] = *str++) == '\n')
   doflush = 1;
 }
 if (doflush)
  (void)ex_fflush(sp);
 return (n);
}
