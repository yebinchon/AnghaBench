
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* lo; } ;
struct TYPE_6__ {int rem; } ;
typedef TYPE_1__ INTQR ;
typedef int FICL_VM ;
typedef void* FICL_INT ;
typedef TYPE_2__ DPINT ;


 void* POPINT () ;
 int PUSHINT (int ) ;
 int i64Extend (TYPE_2__) ;
 TYPE_1__ m64SymmetricDivI (TYPE_2__,void*) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void ficlMod(FICL_VM *pVM)
{
    DPINT d1;
    FICL_INT n1;
    INTQR qr;




    n1 = POPINT();
    d1.lo = POPINT();
    i64Extend(d1);
    qr = m64SymmetricDivI(d1, n1);
    PUSHINT(qr.rem);
    return;
}
