
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pSys; int state; } ;
struct TYPE_7__ {scalar_t__ nLocals; } ;
typedef int STRINGINFO ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int COMPILE ;
 int FW_DEFAULT ;
 int FW_SMUDGE ;
 int colonParen ;
 int colonTag ;
 int dictAppendWord2 (int *,int ,int ,int) ;
 int dictCheckThreshold (int *) ;
 int markControlTag (TYPE_2__*,int ) ;
 int * vmGetDict (TYPE_2__*) ;
 int vmGetWord (TYPE_2__*) ;

__attribute__((used)) static void colon(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    STRINGINFO si = vmGetWord(pVM);

    dictCheckThreshold(dp);

    pVM->state = COMPILE;
    markControlTag(pVM, colonTag);
    dictAppendWord2(dp, si, colonParen, FW_DEFAULT | FW_SMUDGE);



    return;
}
