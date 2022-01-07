
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ clock_t ;
struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 scalar_t__ clock () ;
 int stackPushUNS (int ,int ) ;

__attribute__((used)) static void ficlClock(FICL_VM *pVM)
{
    clock_t now = clock();
    stackPushUNS(pVM->pStack, (FICL_UNS)now);
    return;
}
