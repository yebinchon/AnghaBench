
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_INT ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 int FW_ISOBJECT ;
 scalar_t__ stackPopPtr (int ) ;
 int stackPushINT (int ,int ) ;

__attribute__((used)) static void isObject(FICL_VM *pVM)
{
    FICL_INT flag;
    FICL_WORD *pFW = (FICL_WORD *)stackPopPtr(pVM->pStack);

    flag = ((pFW != ((void*)0)) && (pFW->flags & FW_ISOBJECT)) ? FICL_TRUE : FICL_FALSE;
    stackPushINT(pVM->pStack, flag);
    return;
}
