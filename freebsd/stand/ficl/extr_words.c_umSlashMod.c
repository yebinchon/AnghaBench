
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int quot; int rem; } ;
typedef TYPE_1__ UNSQR ;
struct TYPE_6__ {int pStack; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_UNS ;
typedef int DPUNS ;


 int PUSHUNS (int ) ;
 TYPE_1__ ficlLongDiv (int ,int ) ;
 int stackPopUNS (int ) ;
 int u64Pop (int ) ;

__attribute__((used)) static void umSlashMod(FICL_VM *pVM)
{
    DPUNS ud;
    FICL_UNS u1;
    UNSQR qr;

    u1 = stackPopUNS(pVM->pStack);
    ud = u64Pop(pVM->pStack);
    qr = ficlLongDiv(ud, u1);
    PUSHUNS(qr.rem);
    PUSHUNS(qr.quot);
    return;
}
