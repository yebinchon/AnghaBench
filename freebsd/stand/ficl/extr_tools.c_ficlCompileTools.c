
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dp; } ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_DICT ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 int FW_DEFAULT ;
 int assert (int *) ;
 int bye ;
 int dictAppendWord (int *,char*,int ,int ) ;
 int displayPStack ;
 int displayRStack ;
 int env2Constant ;
 int envConstant ;
 int ficlDebugXT ;
 int ficlListParseSteps ;
 int ficlSetEnv (TYPE_1__*,char*,int ) ;
 int forget ;
 int forgetWid ;
 int listEnv ;
 int listWords ;
 int see ;
 int seeXT ;
 int stepBreak ;

void ficlCompileTools(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    assert (dp);




    dictAppendWord(dp, ".s", displayPStack, FW_DEFAULT);
    dictAppendWord(dp, "bye", bye, FW_DEFAULT);
    dictAppendWord(dp, "forget", forget, FW_DEFAULT);
    dictAppendWord(dp, "see", see, FW_DEFAULT);
    dictAppendWord(dp, "words", listWords, FW_DEFAULT);




    ficlSetEnv(pSys, "tools", FICL_TRUE);
    ficlSetEnv(pSys, "tools-ext", FICL_FALSE);




    dictAppendWord(dp, "r.s", displayRStack, FW_DEFAULT);
    dictAppendWord(dp, ".env", listEnv, FW_DEFAULT);
    dictAppendWord(dp, "env-constant",
                                    envConstant, FW_DEFAULT);
    dictAppendWord(dp, "env-2constant",
                                    env2Constant, FW_DEFAULT);
    dictAppendWord(dp, "debug-xt", ficlDebugXT, FW_DEFAULT);
    dictAppendWord(dp, "parse-order",
                                    ficlListParseSteps,
                                                    FW_DEFAULT);
    dictAppendWord(dp, "step-break",stepBreak, FW_DEFAULT);
    dictAppendWord(dp, "forget-wid",forgetWid, FW_DEFAULT);
    dictAppendWord(dp, "see-xt", seeXT, FW_DEFAULT);

    return;
}
