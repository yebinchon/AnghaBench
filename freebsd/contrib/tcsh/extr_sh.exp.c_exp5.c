
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef int Char ;


 int ERR_DIV0 ;
 int ERR_MOD0 ;
 int MULOP ;
 int* Strsave (int const*) ;
 int TEXP_IGNORE ;
 int TEXP_NOGLOB ;
 int cleanup_push (int*,int (*) (int*)) ;
 int cleanup_until (int*) ;
 scalar_t__ compat_expr ;
 int egetn (int*) ;
 int etracc (char*,int*,int***) ;
 int* exp6 (int***,int) ;
 scalar_t__ isa (int*,int ) ;
 int* putn (int) ;
 int stderror (int ) ;
 int xfree (int*) ;

__attribute__((used)) static Char *
exp5(Char ***vp, int ignore)
{
    Char *p1, *p2;
    tcsh_number_t i = 0;

    p1 = exp6(vp, ignore);
    etracc("exp5 p1", p1, vp);

    while (isa(**vp, MULOP)) {
 const Char *op = *(*vp)++;
 if ((ignore & TEXP_NOGLOB) != 0) {




     xfree(p1);
     return Strsave(op);
 }

 cleanup_push(p1, xfree);
 p2 = compat_expr ?
     exp5(vp, ignore) :
     exp6(vp, ignore);
 cleanup_push(p2, xfree);
 etracc("exp5 p2", p2, vp);
 if (!(ignore & TEXP_IGNORE))
     switch (op[0]) {

     case '*':
  i = egetn(p1) * egetn(p2);
  break;

     case '/':
  i = egetn(p2);
  if (i == 0)
      stderror(ERR_DIV0);
  i = egetn(p1) / i;
  break;

     case '%':
  i = egetn(p2);
  if (i == 0)
      stderror(ERR_MOD0);
  i = egetn(p1) % i;
  break;
     }
 cleanup_until(p1);
 p1 = putn(i);
 etracc("exp5 p1", p1, vp);
 if (compat_expr)
     break;
    }
    return (p1);
}
