
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srch {int s_value; char const* s_name; } ;


 int nsrchn ;
 struct srch* srchn ;

__attribute__((used)) static const char *
isrchx(int n)
{
    struct srch *sp, *sp2;

    for (sp = srchn, sp2 = srchn + nsrchn; sp < sp2; sp++)
 if (sp->s_value == n)
     return (sp->s_name);
    return ("");
}
