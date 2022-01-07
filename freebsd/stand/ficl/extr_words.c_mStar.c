
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;
typedef int DPINT ;


 int POPINT () ;
 int i64Push (int ,int ) ;
 int m64MulI (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void mStar(FICL_VM *pVM)
{
    FICL_INT n2;
    FICL_INT n1;
    DPINT d;




    n2 = POPINT();
    n1 = POPINT();

    d = m64MulI(n1, n2);
    i64Push(pVM->pStack, d);
    return;
}
