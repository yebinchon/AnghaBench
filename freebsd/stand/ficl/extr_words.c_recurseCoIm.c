
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int smudge; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_DICT ;


 int IGNORE (int *) ;
 int LVALUEtoCELL (int ) ;
 int dictAppendCell (TYPE_1__*,int ) ;
 TYPE_1__* vmGetDict (int *) ;

__attribute__((used)) static void recurseCoIm(FICL_VM *pVM)
{
    FICL_DICT *pDict = vmGetDict(pVM);

    IGNORE(pVM);
    dictAppendCell(pDict, LVALUEtoCELL(pDict->smudge));
    return;
}
