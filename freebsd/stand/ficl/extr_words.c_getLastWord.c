
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * smudge; } ;
typedef int FICL_WORD ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_DICT ;


 int LVALUEtoCELL (int *) ;
 int assert (int *) ;
 TYPE_1__* vmGetDict (int *) ;
 int vmPush (int *,int ) ;

__attribute__((used)) static void getLastWord(FICL_VM *pVM)
{
    FICL_DICT *pDict = vmGetDict(pVM);
    FICL_WORD *wp = pDict->smudge;
    assert(wp);
    vmPush(pVM, LVALUEtoCELL(wp));
    return;
}
