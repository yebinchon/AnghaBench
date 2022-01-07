
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UNS8 ;
struct TYPE_8__ {scalar_t__ here; TYPE_1__* smudge; } ;
struct TYPE_7__ {int flags; char nName; char* name; scalar_t__ param; int code; int hash; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_DICT ;
typedef scalar_t__ FICL_COUNT ;
typedef int FICL_CODE ;


 int FALSE ;
 int FW_SMUDGE ;
 int SI_COUNT (int ) ;
 int TRUE ;
 char* dictCopyName (TYPE_2__*,int ) ;
 int dictUnsmudge (TYPE_2__*) ;
 int ficlLockDictionary (int ) ;
 int hashHashCode (int ) ;

FICL_WORD *dictAppendWord2(FICL_DICT *pDict,
                           STRINGINFO si,
                           FICL_CODE pCode,
                           UNS8 flags)
{
    FICL_COUNT len = (FICL_COUNT)SI_COUNT(si);
    char *pName;
    FICL_WORD *pFW;

    ficlLockDictionary(TRUE);





    pName = dictCopyName(pDict, si);
    pFW = (FICL_WORD *)pDict->here;
    pDict->smudge = pFW;
    pFW->hash = hashHashCode(si);
    pFW->code = pCode;
    pFW->flags = (UNS8)(flags | FW_SMUDGE);
    pFW->nName = (char)len;
    pFW->name = pName;



    pDict->here = pFW->param;

    if (!(flags & FW_SMUDGE))
        dictUnsmudge(pDict);

    ficlLockDictionary(FALSE);
    return pFW;
}
