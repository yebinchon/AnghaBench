
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef char Char ;


 int ERR_EXPRESSION ;
 int ERR_NAME ;
 int Isdigit (char const) ;
 int getn (char const*) ;
 int stderror (int) ;

__attribute__((used)) static tcsh_number_t
egetn(const Char *cp)
{
    if (*cp && *cp != '-' && !Isdigit(*cp))
 stderror(ERR_NAME | ERR_EXPRESSION);
    return (getn(cp));
}
