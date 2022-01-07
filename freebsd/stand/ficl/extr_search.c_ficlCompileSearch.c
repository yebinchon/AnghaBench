
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dp; } ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_DICT ;


 int FICL_DEFAULT_VOCS ;
 int FICL_TRUE ;
 int FW_DEFAULT ;
 int assert (int *) ;
 int definitions ;
 int dictAppendWord (int *,char*,int ,int ) ;
 int ficlSetEnv (TYPE_1__*,char*,int ) ;
 int ficlWordlist ;
 int forthWordlist ;
 int getCurrent ;
 int getOrder ;
 int searchPop ;
 int searchPush ;
 int searchWordlist ;
 int setCurrent ;
 int setOrder ;
 int setParentWid ;
 int widGetName ;
 int widSetName ;

void ficlCompileSearch(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    assert (dp);




    dictAppendWord(dp, ">search", searchPush, FW_DEFAULT);
    dictAppendWord(dp, "search>", searchPop, FW_DEFAULT);
    dictAppendWord(dp, "definitions",
                                    definitions, FW_DEFAULT);
    dictAppendWord(dp, "forth-wordlist",
                                    forthWordlist, FW_DEFAULT);
    dictAppendWord(dp, "get-current",
                                    getCurrent, FW_DEFAULT);
    dictAppendWord(dp, "get-order", getOrder, FW_DEFAULT);
    dictAppendWord(dp, "search-wordlist",
                                    searchWordlist, FW_DEFAULT);
    dictAppendWord(dp, "set-current",
                                    setCurrent, FW_DEFAULT);
    dictAppendWord(dp, "set-order", setOrder, FW_DEFAULT);
    dictAppendWord(dp, "ficl-wordlist",
                                    ficlWordlist, FW_DEFAULT);




    ficlSetEnv(pSys, "search-order", FICL_TRUE);
    ficlSetEnv(pSys, "search-order-ext", FICL_TRUE);
    ficlSetEnv(pSys, "wordlists", FICL_DEFAULT_VOCS);

    dictAppendWord(dp, "wid-get-name", widGetName, FW_DEFAULT);
    dictAppendWord(dp, "wid-set-name", widSetName, FW_DEFAULT);
    dictAppendWord(dp, "wid-set-super",
                                    setParentWid, FW_DEFAULT);
    return;
}
