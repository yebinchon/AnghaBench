
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_CODE ;
typedef int CELL ;


 int FALSE ;
 int TRUE ;
 int assert (int) ;
 int dictAppendWord (int ,char*,int ,char) ;
 int dictCellsAvail (int ) ;
 int ficlLockDictionary (int ) ;

int ficlBuild(FICL_SYSTEM *pSys, char *name, FICL_CODE code, char flags)
{





    assert(dictCellsAvail(pSys->dp) > sizeof (FICL_WORD) / sizeof (CELL));
    dictAppendWord(pSys->dp, name, code, flags);

    ficlLockDictionary(FALSE);
    return 0;
}
