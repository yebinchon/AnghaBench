
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dp; } ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_DICT ;


 int FW_DEFAULT ;
 int assert (int *) ;
 int dictAppendWord (int *,char*,int ,int ) ;
 int ficlInb ;
 int ficlOutb ;

__attribute__((used)) static void ficlCompileCpufunc(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    assert (dp);

    dictAppendWord(dp, "outb", ficlOutb, FW_DEFAULT);
    dictAppendWord(dp, "inb", ficlInb, FW_DEFAULT);
}
