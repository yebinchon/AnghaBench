
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef int Char ;


 int STRand ;
 int TEXP_IGNORE ;
 scalar_t__ compat_expr ;
 scalar_t__ eq (int *,int ) ;
 int etraci (char*,int,int ***) ;
 int exp2c (int ***,int) ;

__attribute__((used)) static tcsh_number_t
exp2b(Char ***vp, int ignore)
{
    tcsh_number_t p1 = exp2c(vp, ignore);

    etraci("exp2b p1", p1, vp);
    while (**vp && eq(**vp, STRand)) {
 tcsh_number_t p2;

 (*vp)++;
 p2 = compat_expr ?
     exp2b(vp, ignore) :
     exp2c(vp, ignore);
 etraci("exp2b p2", p2, vp);
 if (compat_expr || !(ignore & TEXP_IGNORE))
     p1 = (p1 & p2);
 etraci("exp2b p1", p1, vp);
 if (compat_expr)
     break;
    }
    return (p1);
}
