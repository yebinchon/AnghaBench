
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_uint64 ;
typedef int sqlite3_stmt ;


 void SQLITE_DYNAMIC (void*) ;
 unsigned char SQLITE_UTF16 ;
 unsigned char SQLITE_UTF16NATIVE ;
 int assert (int) ;
 int bindText (int *,int,char const*,int,void (*) (void*),unsigned char) ;
 int invokeValueDestructor (char const*,void (*) (void*),int ) ;

int sqlite3_bind_text64(
  sqlite3_stmt *pStmt,
  int i,
  const char *zData,
  sqlite3_uint64 nData,
  void (*xDel)(void*),
  unsigned char enc
){
  assert( xDel!=SQLITE_DYNAMIC );
  if( nData>0x7fffffff ){
    return invokeValueDestructor(zData, xDel, 0);
  }else{
    if( enc==SQLITE_UTF16 ) enc = SQLITE_UTF16NATIVE;
    return bindText(pStmt, i, zData, (int)nData, xDel, enc);
  }
}
