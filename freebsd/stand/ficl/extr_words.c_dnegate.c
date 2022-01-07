
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int DPINT ;


 int i64Pop (int ) ;
 int i64Push (int ,int ) ;
 int m64Negate (int ) ;

__attribute__((used)) static void dnegate(FICL_VM *pVM)
{
    DPINT i = i64Pop(pVM->pStack);
    i = m64Negate(i);
    i64Push(pVM->pStack, i);

    return;
}
