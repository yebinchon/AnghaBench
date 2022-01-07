
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i; } ;
struct TYPE_6__ {scalar_t__ fRestart; TYPE_1__ sourceID; } ;
typedef TYPE_2__ FICL_VM ;
typedef scalar_t__ FICL_INT ;


 scalar_t__ FICL_FALSE ;
 scalar_t__ FICL_TRUE ;
 int PUSHINT (scalar_t__) ;
 int VM_RESTART ;
 int vmThrow (TYPE_2__*,int ) ;

__attribute__((used)) static void refill(FICL_VM *pVM)
{
    FICL_INT ret = (pVM->sourceID.i == -1) ? FICL_FALSE : FICL_TRUE;
    if (ret && (pVM->fRestart == 0))
        vmThrow(pVM, VM_RESTART);

    PUSHINT(ret);
    return;
}
