
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef int Char ;


 int STRor ;
 int TEXP_IGNORE ;
 scalar_t__ compat_expr ;
 scalar_t__ eq (int *,int ) ;
 int etraci (char*,int,int ***) ;
 int exp2a (int ***,int) ;

__attribute__((used)) static tcsh_number_t
exp2x(Char ***vp, int ignore)
{
    tcsh_number_t p1 = exp2a(vp, ignore);

    etraci("exp2x p1", p1, vp);
    while (**vp && eq(**vp, STRor)) {
 tcsh_number_t p2;

 (*vp)++;
 p2 = compat_expr ?
     exp2x(vp, ignore) :
     exp2a(vp, ignore);
 etraci("exp2x p2", p2, vp);
 if (compat_expr || !(ignore & TEXP_IGNORE))
  p1 = (p1 | p2);
 etraci("exp2x p1", p1, vp);
 if (compat_expr)
     break;
    }
    return (p1);
}
