
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UNS8 ;
struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 int PUSHUNS (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void cFetch(FICL_VM *pVM)
{
    UNS8 *pc;



    pc = (UNS8 *)stackPopPtr(pVM->pStack);
    PUSHUNS((FICL_UNS)*pc);
    return;
}
