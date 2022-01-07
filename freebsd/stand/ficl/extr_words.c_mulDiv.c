
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int quot; } ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;
typedef int DPINT ;


 int PUSHINT (int ) ;
 int m64MulI (int ,int ) ;
 TYPE_4__ m64SymmetricDivI (int ,int ) ;
 int stackPopINT (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void mulDiv(FICL_VM *pVM)
{
    FICL_INT x, y, z;
    DPINT prod;



    z = stackPopINT(pVM->pStack);
    y = stackPopINT(pVM->pStack);
    x = stackPopINT(pVM->pStack);

    prod = m64MulI(x,y);
    x = m64SymmetricDivI(prod, z).quot;

    PUSHINT(x);
    return;
}
