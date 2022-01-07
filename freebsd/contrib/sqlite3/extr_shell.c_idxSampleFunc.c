
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IdxSampleCtx {double nRow; int nRet; int target; int iTarget; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int assert (int) ;
 int sqlite3_randomness (int,void*) ;
 int sqlite3_result_int (int *,int) ;
 scalar_t__ sqlite3_user_data (int *) ;

__attribute__((used)) static void idxSampleFunc(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  struct IdxSampleCtx *p = (struct IdxSampleCtx*)sqlite3_user_data(pCtx);
  int bRet;

  (void)argv;
  assert( argc==0 );
  if( p->nRow==0.0 ){
    bRet = 1;
  }else{
    bRet = (p->nRet / p->nRow) <= p->target;
    if( bRet==0 ){
      unsigned short rnd;
      sqlite3_randomness(2, (void*)&rnd);
      bRet = ((int)rnd % 100) <= p->iTarget;
    }
  }

  sqlite3_result_int(pCtx, bRet);
  p->nRow += 1.0;
  p->nRet += (double)bRet;
}
