
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pStack; } ;
struct TYPE_6__ {int quot; int rem; } ;
typedef TYPE_1__ INTQR ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_INT ;
typedef int DPINT ;


 int PUSHINT (int ) ;
 int m64MulI (int ,int ) ;
 TYPE_1__ m64SymmetricDivI (int ,int ) ;
 int stackPopINT (int ) ;
 int vmCheckStack (TYPE_2__*,int,int) ;

__attribute__((used)) static void mulDivRem(FICL_VM *pVM)
{
    FICL_INT x, y, z;
    DPINT prod;
    INTQR qr;



    z = stackPopINT(pVM->pStack);
    y = stackPopINT(pVM->pStack);
    x = stackPopINT(pVM->pStack);

    prod = m64MulI(x,y);
    qr = m64SymmetricDivI(prod, z);

    PUSHINT(qr.rem);
    PUSHINT(qr.quot);
    return;
}
