
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; scalar_t__ count; } ;
typedef int STRINGINFO ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_STRING ;
typedef scalar_t__ FICL_COUNT ;


 int FICL_STRING_MAX ;
 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int SI_SETLEN (int ,int) ;
 int strncpy (char*,int ,int) ;
 int vmParseStringEx (int *,char,int ) ;

char *vmGetString(FICL_VM *pVM, FICL_STRING *spDest, char delimiter)
{
    STRINGINFO si = vmParseStringEx(pVM, delimiter, 0);

    if (SI_COUNT(si) > FICL_STRING_MAX)
    {
        SI_SETLEN(si, FICL_STRING_MAX);
    }

    strncpy(spDest->text, SI_PTR(si), SI_COUNT(si));
    spDest->text[SI_COUNT(si)] = '\0';
    spDest->count = (FICL_COUNT)SI_COUNT(si);

    return spDest->text + SI_COUNT(si) + 1;
}
