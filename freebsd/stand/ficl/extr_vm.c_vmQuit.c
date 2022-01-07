
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_5__ {scalar_t__ index; int * end; int * cp; } ;
struct TYPE_7__ {char* pad; TYPE_2__ sourceID; TYPE_1__ tib; int state; int * runningWord; int * ip; scalar_t__ fRestart; int rStack; } ;
typedef TYPE_3__ FICL_VM ;


 int INTERPRET ;
 int stackReset (int ) ;

void vmQuit(FICL_VM *pVM)
{
    stackReset(pVM->rStack);
    pVM->fRestart = 0;
    pVM->ip = ((void*)0);
    pVM->runningWord = ((void*)0);
    pVM->state = INTERPRET;
    pVM->tib.cp = ((void*)0);
    pVM->tib.end = ((void*)0);
    pVM->tib.index = 0;
    pVM->pad[0] = '\0';
    pVM->sourceID.i = 0;
    return;
}
