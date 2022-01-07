
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state; } ;
typedef int STRINGINFO ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_DICT ;


 int COMPILE ;
 int FW_DEFAULT ;
 int FW_SMUDGE ;
 int PUSHPTR (int *) ;
 int SI_SETLEN (int ,int ) ;
 int SI_SETPTR (int ,int *) ;
 int colonParen ;
 int colonTag ;
 int * dictAppendWord2 (int *,int ,int ,int) ;
 int markControlTag (TYPE_1__*,int ) ;
 int * vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void colonNoName(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    FICL_WORD *pFW;
    STRINGINFO si;

    SI_SETLEN(si, 0);
    SI_SETPTR(si, ((void*)0));

    pVM->state = COMPILE;
    pFW = dictAppendWord2(dp, si, colonParen, FW_DEFAULT | FW_SMUDGE);
    PUSHPTR(pFW);
    markControlTag(pVM, colonTag);
    return;
}
