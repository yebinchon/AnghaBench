
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef char Char ;


 int ERR_BADNUM ;
 int ERR_NAME ;
 scalar_t__ Isdigit (char const) ;
 int STRparseoctal ;
 scalar_t__ is_set (int ) ;
 int stderror (int) ;

tcsh_number_t
getn(const Char *cp)
{
    tcsh_number_t n;
    int sign;
    int base;

    if (!cp)
 stderror(ERR_NAME | ERR_BADNUM);

    sign = 0;
    if (cp[0] == '+' && cp[1])
 cp++;
    if (*cp == '-') {
 sign++;
 cp++;
 if (!Isdigit(*cp))
     stderror(ERR_NAME | ERR_BADNUM);
    }

    if (cp[0] == '0' && cp[1] && is_set(STRparseoctal))
 base = 8;
    else
 base = 10;

    n = 0;
    while (Isdigit(*cp))
    {
 if (base == 8 && *cp >= '8')
     stderror(ERR_NAME | ERR_BADNUM);
 n = n * base + *cp++ - '0';
    }
    if (*cp)
 stderror(ERR_NAME | ERR_BADNUM);
    return (sign ? -n : n);
}
