
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp; } ;
typedef int STRINGINFO ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_SYSTEM ;


 int SI_PSZ (int ,char*) ;
 int * dictLookup (int ,int ) ;

FICL_WORD *ficlLookup(FICL_SYSTEM *pSys, char *name)
{
    STRINGINFO si;
    SI_PSZ(si, name);
    return dictLookup(pSys->dp, si);
}
