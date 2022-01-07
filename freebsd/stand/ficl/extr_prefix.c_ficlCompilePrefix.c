
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {TYPE_3__* pCompile; } ;
struct TYPE_15__ {char* name; } ;
struct TYPE_14__ {TYPE_4__* dp; } ;
struct TYPE_13__ {int code; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_SYSTEM ;
typedef TYPE_3__ FICL_HASH ;
typedef TYPE_4__ FICL_DICT ;


 int FW_DEFAULT ;
 int LVALUEtoCELL (TYPE_3__*) ;
 int constantParen ;
 int dictAppendCell (TYPE_4__*,int ) ;
 int dictAppendWord (TYPE_4__*,char*,int ,int ) ;
 TYPE_3__* dictCreateWordlist (TYPE_4__*,int) ;
 int fTempBase ;
 TYPE_1__* ficlLookup (TYPE_2__*,char*) ;
 char* list_name ;
 int prefixHex ;
 int prefixTen ;

void ficlCompilePrefix(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    FICL_HASH *pHash;
    FICL_HASH *pPrevCompile = dp->pCompile;
    pHash = dictCreateWordlist(dp, 1);
    pHash->name = list_name;
    dictAppendWord(dp, list_name, constantParen, FW_DEFAULT);
    dictAppendCell(dp, LVALUEtoCELL(pHash));




    dictAppendWord(dp, "__tempbase", fTempBase, FW_DEFAULT);





    dp->pCompile = pHash;
    dictAppendWord(dp, "0x", prefixHex, FW_DEFAULT);
    dictAppendWord(dp, "0d", prefixTen, FW_DEFAULT);







    dp->pCompile = pPrevCompile;

    return;
}
