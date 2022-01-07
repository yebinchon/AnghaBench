
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef int Char ;


 int STRor2 ;
 int TEXP_IGNORE ;
 scalar_t__ compat_expr ;
 scalar_t__ eq (int *,int ) ;
 int etraci (char*,int,int ***) ;
 int exp1 (int ***,int) ;

tcsh_number_t
exp0(Char ***vp, int ignore)
{
    tcsh_number_t p1 = exp1(vp, ignore);

    etraci("exp0 p1", p1, vp);
    while (**vp && eq(**vp, STRor2)) {
 int p2;

 (*vp)++;

 p2 = compat_expr ?
     exp0(vp, (ignore & TEXP_IGNORE) || p1) :
     exp1(vp, (ignore & TEXP_IGNORE) || p1);
 if (compat_expr || !(ignore & TEXP_IGNORE))
     p1 = (p1 || p2);
 etraci("exp0 p1", p1, vp);
 if (compat_expr)
     break;
    }
    return (p1);
}
