
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* lo; } ;
struct TYPE_10__ {int pStack; } ;
struct TYPE_9__ {int quot; int rem; } ;
typedef TYPE_1__ INTQR ;
typedef TYPE_2__ FICL_VM ;
typedef void* FICL_INT ;
typedef TYPE_3__ DPINT ;


 int PUSHINT (int ) ;
 int i64Extend (TYPE_3__) ;
 TYPE_1__ m64SymmetricDivI (TYPE_3__,void*) ;
 void* stackPopINT (int ) ;
 int vmCheckStack (TYPE_2__*,int,int) ;

__attribute__((used)) static void slashMod(FICL_VM *pVM)
{
    DPINT n1;
    FICL_INT n2;
    INTQR qr;




    n2 = stackPopINT(pVM->pStack);
    n1.lo = stackPopINT(pVM->pStack);
    i64Extend(n1);

    qr = m64SymmetricDivI(n1, n2);
    PUSHINT(qr.rem);
    PUSHINT(qr.quot);
    return;
}
