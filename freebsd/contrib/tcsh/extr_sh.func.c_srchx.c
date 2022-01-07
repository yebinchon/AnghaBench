
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srch {int* s_name; int s_value; } ;
typedef int Char ;


 int Strcmp (int*,int ) ;
 scalar_t__ inheredoc ;
 int nsrchn ;
 struct srch* srchn ;
 int str2short (int*) ;

int
srchx(Char *cp)
{
    struct srch *sp, *sp1, *sp2;
    int i;




    if (inheredoc)
 return -1;





    for (sp1 = srchn, sp2 = srchn + nsrchn; sp1 < sp2;) {
 sp = sp1 + ((sp2 - sp1) >> 1);
 if ((i = *cp - *sp->s_name) == 0 &&
     (i = Strcmp(cp, str2short(sp->s_name))) == 0)
     return sp->s_value;
 if (i < 0)
     sp2 = sp;
 else
     sp1 = sp + 1;
    }
    return (-1);
}
