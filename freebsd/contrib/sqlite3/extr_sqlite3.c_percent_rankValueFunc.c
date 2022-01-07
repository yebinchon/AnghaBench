
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CallCount {int nTotal; scalar_t__ nValue; scalar_t__ nStep; } ;
typedef int sqlite3_context ;


 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_double (int *,double) ;

__attribute__((used)) static void percent_rankValueFunc(sqlite3_context *pCtx){
  struct CallCount *p;
  p = (struct CallCount*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ){
    p->nValue = p->nStep;
    if( p->nTotal>1 ){
      double r = (double)p->nValue / (double)(p->nTotal-1);
      sqlite3_result_double(pCtx, r);
    }else{
      sqlite3_result_double(pCtx, 0.0);
    }
  }
}
