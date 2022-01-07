
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORDKIND ;
struct TYPE_6__ {int * origXT; int ** address; } ;
struct TYPE_8__ {TYPE_1__ bpStep; } ;
struct TYPE_7__ {int ** ip; TYPE_5__* pSys; } ;
typedef int FICL_WORD ;
typedef TYPE_2__ FICL_VM ;




 int assert (int *) ;
 int * ficlLookup (TYPE_5__*,char*) ;
 int ficlWordClassify (int *) ;
 int stepIn (TYPE_2__*) ;

void stepOver(FICL_VM *pVM)
{
    FICL_WORD *pFW;
    WORDKIND kind;
    FICL_WORD *pStep = ficlLookup(pVM->pSys, "step-break");
    assert(pStep);

    pFW = *pVM->ip;
    kind = ficlWordClassify(pFW);

    switch (kind)
    {
    case 129:
    case 128:




        pVM->pSys->bpStep.address = pVM->ip + 1;
        pVM->pSys->bpStep.origXT = pVM->ip[1];
        pVM->ip[1] = pStep;
        break;

    default:
        stepIn(pVM);
        break;
    }

    return;
}
