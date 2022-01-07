
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 scalar_t__* Strsave (scalar_t__*) ;
 int expr (scalar_t__***) ;
 scalar_t__* putn (int ) ;
 int xfree (scalar_t__*) ;

__attribute__((used)) static Char *
xset(Char *cp, Char ***vp)
{
    Char *dp;

    if (*cp) {
 dp = Strsave(cp);
 --(*vp);
 xfree(** vp);
 **vp = dp;
    }
    return (putn(expr(vp)));
}
