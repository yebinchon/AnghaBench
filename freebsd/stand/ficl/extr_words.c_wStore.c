
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UNS16 ;
struct TYPE_6__ {scalar_t__ u; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 TYPE_4__ stackPop (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void wStore(FICL_VM *pVM)
{
    UNS16 *pw;



    pw = (UNS16 *)stackPopPtr(pVM->pStack);
    *pw = (UNS16)(stackPop(pVM->pStack).u);
}
