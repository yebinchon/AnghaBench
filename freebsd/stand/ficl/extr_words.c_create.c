
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;
typedef int FICL_DICT ;


 int FW_DEFAULT ;
 int createParen ;
 int dictAllotCells (int *,int) ;
 int dictAppendWord2 (int *,int ,int ,int ) ;
 int dictCheckThreshold (int *) ;
 int * vmGetDict (int *) ;
 int vmGetWord (int *) ;

__attribute__((used)) static void create(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    STRINGINFO si = vmGetWord(pVM);

    dictCheckThreshold(dp);

    dictAppendWord2(dp, si, createParen, FW_DEFAULT);
    dictAllotCells(dp, 1);
    return;
}
