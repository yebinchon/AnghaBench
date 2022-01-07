
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;


 void SQLITE_DYNAMIC (void*) ;
 int SQLITE_TOOBIG ;
 void SQLITE_TRANSIENT (void*) ;
 int assert (int) ;
 int sqlite3_result_error_toobig (int *) ;

__attribute__((used)) static int invokeValueDestructor(
  const void *p,
  void (*xDel)(void*),
  sqlite3_context *pCtx
){
  assert( xDel!=SQLITE_DYNAMIC );
  if( xDel==0 ){

  }else if( xDel==SQLITE_TRANSIENT ){

  }else{
    xDel((void*)p);
  }
  if( pCtx ) sqlite3_result_error_toobig(pCtx);
  return SQLITE_TOOBIG;
}
