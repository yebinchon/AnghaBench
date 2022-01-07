
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* runningWord; } ;
struct TYPE_6__ {int (* code ) (TYPE_2__*) ;} ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;


 int stub1 (TYPE_2__*) ;

void vmExecute(FICL_VM *pVM, FICL_WORD *pWord)
{
    pVM->runningWord = pWord;
    pWord->code(pVM);
    return;
}
