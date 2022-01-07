
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ nLocals; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_7__* pSys; } ;
typedef int STRINGINFO ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_DICT ;


 int FICL_FALSE ;
 scalar_t__ FICL_TRUE ;
 scalar_t__ INTERPRET ;
 int LVALUEtoCELL (int *) ;
 int dictAppendCell (int *,int ) ;
 int dictCheck (int *,TYPE_1__*,int ) ;
 int * dictLookup (int *,int ) ;
 int * ficlLookupLoc (TYPE_7__*,int ) ;
 int vmCheckStack (TYPE_1__*,int ,int ) ;
 int vmExecute (TYPE_1__*,int *) ;
 int * vmGetDict (TYPE_1__*) ;
 int vmThrowErr (TYPE_1__*,char*) ;
 scalar_t__ wordIsCompileOnly (int *) ;
 scalar_t__ wordIsImmediate (int *) ;

__attribute__((used)) static int ficlParseWord(FICL_VM *pVM, STRINGINFO si)
{
    FICL_DICT *dp = vmGetDict(pVM);
    FICL_WORD *tempFW;
    tempFW = dictLookup(dp, si);

    if (pVM->state == INTERPRET)
    {
        if (tempFW != ((void*)0))
        {
            if (wordIsCompileOnly(tempFW))
            {
                vmThrowErr(pVM, "Error: Compile only!");
            }

            vmExecute(pVM, tempFW);
            return (int)FICL_TRUE;
        }
    }

    else
    {
        if (tempFW != ((void*)0))
        {
            if (wordIsImmediate(tempFW))
            {
                vmExecute(pVM, tempFW);
            }
            else
            {
                dictAppendCell(dp, LVALUEtoCELL(tempFW));
            }
            return (int)FICL_TRUE;
        }
    }

    return FICL_FALSE;
}
