
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** parseList; } ;
struct TYPE_8__ {TYPE_3__* pSys; } ;
struct TYPE_7__ {char* name; } ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_SYSTEM ;


 int FICL_MAX_PARSE_STEPS ;
 int assert (TYPE_3__*) ;
 int vmTextOut (TYPE_2__*,char*,int) ;

void ficlListParseSteps(FICL_VM *pVM)
{
    int i;
    FICL_SYSTEM *pSys = pVM->pSys;
    assert(pSys);

    vmTextOut(pVM, "Parse steps:", 1);
    vmTextOut(pVM, "lookup", 1);

    for (i = 0; i < FICL_MAX_PARSE_STEPS; i++)
    {
        if (pSys->parseList[i] != ((void*)0))
        {
            vmTextOut(pVM, pSys->parseList[i]->name, 1);
        }
        else break;
    }
    return;
}
