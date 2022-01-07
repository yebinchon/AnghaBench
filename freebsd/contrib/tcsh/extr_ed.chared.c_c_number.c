
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int INT_MAX ;

__attribute__((used)) static Char *
c_number(Char *p, int *num, int dval)
{
    int i;
    int sign = 1;

    if (*++p == '^') {
 *num = 1;
 return(p);
    }
    if (*p == '$') {
 if (*++p != '-') {
     *num = INT_MAX;
     return(--p);
 }
 sign = -1;
 ++p;
    }
    for (i = 0; *p >= '0' && *p <= '9'; i = 10 * i + *p++ - '0')
 continue;
    *num = (sign < 0 ? dval - i : i);
    return(--p);
}
