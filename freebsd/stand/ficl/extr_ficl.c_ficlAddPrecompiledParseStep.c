
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dp; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_PARSE_STEP ;
typedef int FICL_DICT ;


 int FW_DEFAULT ;
 int LVALUEtoCELL (int ) ;
 int dictAppendCell (int *,int ) ;
 int * dictAppendWord (int *,char*,int ,int ) ;
 int ficlAddParseStep (TYPE_1__*,int *) ;
 int parseStepParen ;

void ficlAddPrecompiledParseStep(FICL_SYSTEM *pSys, char *name, FICL_PARSE_STEP pStep)
{
    FICL_DICT *dp = pSys->dp;
    FICL_WORD *pFW = dictAppendWord(dp, name, parseStepParen, FW_DEFAULT);
    dictAppendCell(dp, LVALUEtoCELL(pStep));
    ficlAddParseStep(pSys, pFW);
}
