
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


 int POPINT () ;
 int PUSHINT (int ) ;
 int i64Pop (int ) ;
 TYPE_1__ m64SymmetricDivI (int ,int ) ;
 int vmCheckStack (TYPE_2__*,int,int) ;

__attribute__((used)) static void smSlashRem(FICL_VM *pVM)
{
    DPINT d1;
    FICL_INT n1;
    INTQR qr;




    n1 = POPINT();
    d1 = i64Pop(pVM->pStack);
    qr = m64SymmetricDivI(d1, n1);
    PUSHINT(qr.rem);
    PUSHINT(qr.quot);
    return;
}
