
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** parseList; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_SYSTEM ;


 int FICL_MAX_PARSE_STEPS ;

int ficlAddParseStep(FICL_SYSTEM *pSys, FICL_WORD *pFW)
{
    int i;
    for (i = 0; i < FICL_MAX_PARSE_STEPS; i++)
    {
        if (pSys->parseList[i] == ((void*)0))
        {
            pSys->parseList[i] = pFW;
            return 0;
        }
    }

    return 1;
}
