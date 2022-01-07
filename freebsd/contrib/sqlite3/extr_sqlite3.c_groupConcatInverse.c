
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {scalar_t__ nChar; scalar_t__ mxAlloc; int * zText; } ;
typedef TYPE_1__ StrAccum ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 scalar_t__ SQLITE_NULL ;
 int assert (int) ;
 int memmove (int *,int *,scalar_t__) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void groupConcatInverse(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int n;
  StrAccum *pAccum;
  assert( argc==1 || argc==2 );
  if( sqlite3_value_type(argv[0])==SQLITE_NULL ) return;
  pAccum = (StrAccum*)sqlite3_aggregate_context(context, sizeof(*pAccum));


  if( ALWAYS(pAccum) ){
    n = sqlite3_value_bytes(argv[0]);
    if( argc==2 ){
      n += sqlite3_value_bytes(argv[1]);
    }else{
      n++;
    }
    if( n>=(int)pAccum->nChar ){
      pAccum->nChar = 0;
    }else{
      pAccum->nChar -= n;
      memmove(pAccum->zText, &pAccum->zText[n], pAccum->nChar);
    }
    if( pAccum->nChar==0 ) pAccum->mxAlloc = 0;
  }
}
