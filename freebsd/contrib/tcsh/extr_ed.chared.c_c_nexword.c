
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 scalar_t__ Isspace (int ) ;

__attribute__((used)) static Char *
c_nexword(Char *p, Char *high, int n)
{
    while (n--) {
 while ((p < high) && !Isspace(*p))
     p++;
 while ((p < high) && Isspace(*p))
     p++;
    }

    if (p > high)
 p = high;

    return(p);
}
