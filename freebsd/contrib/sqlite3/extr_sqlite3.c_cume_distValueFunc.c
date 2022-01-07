
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CallCount {scalar_t__ nTotal; scalar_t__ nStep; } ;
typedef int sqlite3_context ;


 scalar_t__ sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_double (int *,double) ;

__attribute__((used)) static void cume_distValueFunc(sqlite3_context *pCtx){
  struct CallCount *p;
  p = (struct CallCount*)sqlite3_aggregate_context(pCtx, 0);
  if( p ){
    double r = (double)(p->nStep) / (double)(p->nTotal);
    sqlite3_result_double(pCtx, r);
  }
}
