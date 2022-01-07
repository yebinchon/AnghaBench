
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pad; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;


 size_t SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int SI_SETLEN (int ,size_t) ;
 size_t nPAD ;
 int strncpy (char*,int ,size_t) ;
 int vmGetWord (TYPE_1__*) ;

int vmGetWordToPad(FICL_VM *pVM)
{
    STRINGINFO si;
    char *cp = (char *)pVM->pad;
    si = vmGetWord(pVM);

    if (SI_COUNT(si) > nPAD)
        SI_SETLEN(si, nPAD);

    strncpy(cp, SI_PTR(si), SI_COUNT(si));
    cp[SI_COUNT(si)] = '\0';
    return (int)(SI_COUNT(si));
}
