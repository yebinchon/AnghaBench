
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* INVPTR ;
 scalar_t__ Isspace (char) ;
 char QUOTE ;
 scalar_t__ ismetahash (char) ;

__attribute__((used)) static Char *
tw_tok(Char *str)
{
    static Char *bf = ((void*)0);

    if (str != ((void*)0))
 bf = str;


    for (; *bf && Isspace(*bf); bf++)
 continue;

    for (str = bf; *bf && !Isspace(*bf); bf++) {
 if (ismetahash(*bf))
     return INVPTR;
 *bf = *bf & ~QUOTE;
    }
    if (*bf != '\0')
 *bf++ = '\0';

    return *str ? str : ((void*)0);
}
