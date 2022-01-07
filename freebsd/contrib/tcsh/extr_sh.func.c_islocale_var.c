
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;
 scalar_t__ eq (int *,int *) ;

__attribute__((used)) static int
islocale_var(Char *var)
{
    static Char *locale_vars[] = {
 135, 134, 132, 129,
 128, 133, 131, 130, 0
    };
    Char **v;

    for (v = locale_vars; *v; ++v)
 if (eq(var, *v))
     return 1;
    return 0;
}
