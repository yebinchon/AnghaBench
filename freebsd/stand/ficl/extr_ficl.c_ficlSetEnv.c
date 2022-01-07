
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * envp; } ;
struct TYPE_5__ {int * param; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_WORD ;
typedef int FICL_UNS ;
typedef TYPE_2__ FICL_SYSTEM ;
typedef int FICL_DICT ;


 int FW_DEFAULT ;
 int LVALUEtoCELL (int ) ;
 int SI_PSZ (int ,char*) ;
 int constantParen ;
 int dictAppendCell (int *,int ) ;
 int dictAppendWord (int *,char*,int ,int ) ;
 TYPE_1__* dictLookup (int *,int ) ;

void ficlSetEnv(FICL_SYSTEM *pSys, char *name, FICL_UNS value)
{
    STRINGINFO si;
    FICL_WORD *pFW;
    FICL_DICT *envp = pSys->envp;

    SI_PSZ(si, name);
    pFW = dictLookup(envp, si);

    if (pFW == ((void*)0))
    {
        dictAppendWord(envp, name, constantParen, FW_DEFAULT);
        dictAppendCell(envp, LVALUEtoCELL(value));
    }
    else
    {
        pFW->param[0] = LVALUEtoCELL(value);
    }

    return;
}
