
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int NOCLOBBER_ASK ;
 int NOCLOBBER_DEFAULT ;
 int NOCLOBBER_NOTEMPTY ;
 int STRRparen ;
 int STRask ;
 int STRnotempty ;
 scalar_t__ eq (int *,int ) ;

__attribute__((used)) static int
set_noclobber(Char **val)
{
    Char *option;
    int nc = NOCLOBBER_DEFAULT;

    if (val == ((void*)0))
 return nc;
    while (*val) {
 if (*val == 0 || eq(*val, STRRparen))
     return nc;

 option = *val++;

 if (eq(option, STRnotempty))
     nc |= NOCLOBBER_NOTEMPTY;
 else if (eq(option, STRask))
     nc |= NOCLOBBER_ASK;
    }
    return nc;
}
