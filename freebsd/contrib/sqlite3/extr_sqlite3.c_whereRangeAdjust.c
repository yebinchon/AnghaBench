
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ truthProb; int wtFlags; } ;
typedef TYPE_1__ WhereTerm ;
typedef int LogEst ;


 int TERM_VNULL ;
 int assert (int) ;
 int sqlite3LogEst (int) ;

__attribute__((used)) static LogEst whereRangeAdjust(WhereTerm *pTerm, LogEst nNew){
  LogEst nRet = nNew;
  if( pTerm ){
    if( pTerm->truthProb<=0 ){
      nRet += pTerm->truthProb;
    }else if( (pTerm->wtFlags & TERM_VNULL)==0 ){
      nRet -= 20; assert( 20==sqlite3LogEst(4) );
    }
  }
  return nRet;
}
