
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LastValueCtx {scalar_t__ nVal; scalar_t__ pVal; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 scalar_t__ ALWAYS (struct LastValueCtx*) ;
 int UNUSED_PARAMETER (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_value_free (scalar_t__) ;

__attribute__((used)) static void last_valueInvFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  struct LastValueCtx *p;
  UNUSED_PARAMETER(nArg);
  UNUSED_PARAMETER(apArg);
  p = (struct LastValueCtx*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( ALWAYS(p) ){
    p->nVal--;
    if( p->nVal==0 ){
      sqlite3_value_free(p->pVal);
      p->pVal = 0;
    }
  }
}
