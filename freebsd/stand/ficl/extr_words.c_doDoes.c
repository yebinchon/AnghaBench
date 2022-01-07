
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ p; } ;
struct TYPE_9__ {TYPE_1__* runningWord; } ;
struct TYPE_8__ {TYPE_3__* param; } ;
typedef scalar_t__ IPTYPE ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ CELL ;


 int PUSHPTR (TYPE_3__*) ;
 int vmCheckStack (TYPE_2__*,int ,int) ;
 int vmPushIP (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void doDoes(FICL_VM *pVM)
{
    CELL *pCell;
    IPTYPE tempIP;




    pCell = pVM->runningWord->param;
    tempIP = (IPTYPE)((*pCell).p);
    PUSHPTR(pCell+1);
    vmPushIP(pVM, tempIP);
    return;
}
