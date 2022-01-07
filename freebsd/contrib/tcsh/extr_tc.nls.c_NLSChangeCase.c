
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 scalar_t__ Islower (int ) ;
 scalar_t__ Isupper (int ) ;
 int * Strsave (int const*) ;
 int Tolower (int ) ;
 int Toupper (int ) ;

Char *
NLSChangeCase(const Char *p, int mode)
{
    Char c, *n, c2 = 0;
    const Char *op = p;

    for (; (c = *p) != 0; p++) {
        if (mode == 0 && Islower(c)) {
     c2 = Toupper(c);
     break;
        } else if (mode && Isupper(c)) {
     c2 = Tolower(c);
     break;
 }
    }
    if (!*p)
 return 0;
    n = Strsave(op);
    n[p - op] = c2;
    return n;
}
