
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pForthWords; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_HASH ;


 int stackPushPtr (int ,int *) ;
 TYPE_2__* vmGetDict (TYPE_1__*) ;

__attribute__((used)) static void forthWordlist(FICL_VM *pVM)
{
    FICL_HASH *pHash = vmGetDict(pVM)->pForthWords;
    stackPushPtr(pVM->pStack, pHash);
    return;
}
