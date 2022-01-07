
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int here; } ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_HASH ;
typedef TYPE_2__ FICL_DICT ;


 int hashForget (int *,int ) ;
 scalar_t__ stackPopPtr (int ) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void forgetWid(FICL_VM *pVM)
{
    FICL_DICT *pDict = vmGetDict(pVM);
    FICL_HASH *pHash;

    pHash = (FICL_HASH *)stackPopPtr(pVM->pStack);
    hashForget(pHash, pDict->here);

    return;
}
