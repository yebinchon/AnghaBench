
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int i; } ;
struct TYPE_5__ {TYPE_2__ sourceID; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ CELL ;


 int ficlExecC (TYPE_1__*,char*,int) ;

int ficlEvaluate(FICL_VM *pVM, char *pText)
{
    int returnValue;
    CELL id = pVM->sourceID;
    pVM->sourceID.i = -1;
    returnValue = ficlExecC(pVM, pText, -1);
    pVM->sourceID = id;
    return returnValue;
}
