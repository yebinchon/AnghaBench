
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 int ERR_NAME ;
 int ERR_SUBSCRIPT ;
 scalar_t__ Isdigit (scalar_t__) ;
 int stderror (int) ;

__attribute__((used)) static Char *
getinx(Char *cp, int *ip)
{
    *ip = 0;
    *cp++ = 0;
    while (*cp && Isdigit(*cp))
 *ip = *ip * 10 + *cp++ - '0';
    if (*cp++ != ']')
 stderror(ERR_NAME | ERR_SUBSCRIPT);
    return (cp);
}
