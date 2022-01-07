
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef char Char ;


 scalar_t__ any (char*,char const) ;
 int cleanup_push (char*,int ) ;
 int cleanup_until (char*) ;
 scalar_t__ compat_expr ;
 int egetn (char*) ;
 int etracc (char*,char*,char***) ;
 char* exp4 (char***,int) ;
 char* putn (int) ;
 int xfree ;

__attribute__((used)) static Char *
exp3a(Char ***vp, int ignore)
{
    Char *p1, *p2;
    const Char *op;
    tcsh_number_t i;

    p1 = exp4(vp, ignore);
    etracc("exp3a p1", p1, vp);
    op = **vp;
    if (op && any("<>", op[0]) && op[0] == op[1]) {
 (*vp)++;
 cleanup_push(p1, xfree);
 p2 = compat_expr ?
     exp3a(vp, ignore) :
     exp4(vp, ignore);
 cleanup_push(p2, xfree);
 etracc("exp3a p2", p2, vp);
 if (op[0] == '<')
     i = egetn(p1) << egetn(p2);
 else
     i = egetn(p1) >> egetn(p2);
 cleanup_until(p1);
 p1 = putn(i);
 etracc("exp3a p1", p1, vp);
    }
    return (p1);
}
