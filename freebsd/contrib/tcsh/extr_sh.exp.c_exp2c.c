
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tcsh_number_t ;
typedef int Char ;




 int EQOP ;
 scalar_t__ Gmatch (int *,int *) ;


 int TEXP_IGNORE ;
 int TEXP_NOGLOB ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 scalar_t__ egetn (int *) ;
 scalar_t__ eq (int *,int *) ;
 int etracc (char*,int *,int ***) ;
 int * exp3 (int ***,int) ;
 scalar_t__ isa (int *,int ) ;
 int xfree ;

__attribute__((used)) static tcsh_number_t
exp2c(Char ***vp, int ignore)
{
    Char *p1 = exp3(vp, ignore);
    Char *p2;
    tcsh_number_t i;

    cleanup_push(p1, xfree);
    etracc("exp2c p1", p1, vp);
    if ((i = isa(**vp, EQOP)) != 0) {
 (*vp)++;
 if (i == 130 || i == 128)
     ignore |= TEXP_NOGLOB;
 p2 = exp3(vp, ignore);
 cleanup_push(p2, xfree);
 etracc("exp2c p2", p2, vp);
 if (!(ignore & TEXP_IGNORE))
     switch ((int)i) {

     case 131:
  i = eq(p1, p2);
  break;

     case 129:
  i = !eq(p1, p2);
  break;

     case 130:
  i = Gmatch(p1, p2);
  break;

     case 128:
  i = !Gmatch(p1, p2);
  break;
     }
 cleanup_until(p1);
 return (i);
    }
    i = egetn(p1);
    cleanup_until(p1);
    return (i);
}
