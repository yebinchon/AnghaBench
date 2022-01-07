
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
struct TYPE_2__ {scalar_t__ traceOut; int eTraceType; } ;
typedef TYPE_1__ ShellState ;




 unsigned int SQLITE_TRACE_CLOSE ;



 char* sqlite3_expanded_sql (int *) ;
 char* sqlite3_normalized_sql (int *) ;
 char* sqlite3_sql (int *) ;
 int strlen30 (char const*) ;
 int utf8_printf (scalar_t__,char*,...) ;

__attribute__((used)) static int sql_trace_callback(
  unsigned mType,
  void *pArg,
  void *pP,
  void *pX
){
  ShellState *p = (ShellState*)pArg;
  sqlite3_stmt *pStmt;
  const char *zSql;
  int nSql;
  if( p->traceOut==0 ) return 0;
  if( mType==SQLITE_TRACE_CLOSE ){
    utf8_printf(p->traceOut, "-- closing database connection\n");
    return 0;
  }
  if( mType!=129 && ((const char*)pX)[0]=='-' ){
    zSql = (const char*)pX;
  }else{
    pStmt = (sqlite3_stmt*)pP;
    switch( p->eTraceType ){
      case 132: {
        zSql = sqlite3_expanded_sql(pStmt);
        break;
      }






      default: {
        zSql = sqlite3_sql(pStmt);
        break;
      }
    }
  }
  if( zSql==0 ) return 0;
  nSql = strlen30(zSql);
  while( nSql>0 && zSql[nSql-1]==';' ){ nSql--; }
  switch( mType ){
    case 129:
    case 128: {
      utf8_printf(p->traceOut, "%.*s;\n", nSql, zSql);
      break;
    }
    case 130: {
      sqlite3_int64 nNanosec = *(sqlite3_int64*)pX;
      utf8_printf(p->traceOut, "%.*s; -- %lld ns\n", nSql, zSql, nNanosec);
      break;
    }
  }
  return 0;
}
