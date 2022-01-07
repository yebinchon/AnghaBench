
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dp; } ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_DICT ;


 int EDot ;
 int FDot ;
 int FFrom ;
 int FICL_DEFAULT_STACK ;
 int FICL_FALSE ;
 int FW_COMPILE ;
 int FW_DEFAULT ;
 int FW_IMMEDIATE ;
 int Fadd ;
 int Faddi ;
 int Fconstant ;
 int Fdepth ;
 int Fdiv ;
 int Fdivi ;
 int Fdrop ;
 int Fdup ;
 int Ffetch ;
 int FisEqual ;
 int FisGreater ;
 int FisLess ;
 int FminusRoll ;
 int Fminusrot ;
 int Fmul ;
 int Fmuli ;
 int Fnegate ;
 int Fover ;
 int Fpick ;
 int FplusStore ;
 int FquestionDup ;
 int Froll ;
 int Frot ;
 int Fstore ;
 int Fsub ;
 int Fsubi ;
 int Fswap ;
 int Ftoi ;
 int FtwoDrop ;
 int FtwoDup ;
 int FtwoOver ;
 int FtwoSwap ;
 int FzeroEquals ;
 int FzeroGreater ;
 int FzeroLess ;
 int ToF ;
 int assert (int *) ;
 int dictAppendWord (int *,char*,int ,int ) ;
 int displayFStack ;
 int ficlSetEnv (TYPE_1__*,char*,int ) ;
 int fliteralIm ;
 int fliteralParen ;
 int idivf ;
 int isubf ;
 int itof ;

void ficlCompileFloat(FICL_SYSTEM *pSys)
{
    FICL_DICT *dp = pSys->dp;
    assert(dp);
    return;
}
