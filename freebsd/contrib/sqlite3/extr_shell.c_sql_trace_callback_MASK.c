#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_2__ {scalar_t__ traceOut; int eTraceType; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
#define  SHELL_TRACE_EXPANDED 132 
#define  SHELL_TRACE_NORMALIZED 131 
 unsigned int SQLITE_TRACE_CLOSE ; 
#define  SQLITE_TRACE_PROFILE 130 
#define  SQLITE_TRACE_ROW 129 
#define  SQLITE_TRACE_STMT 128 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,...) ; 

__attribute__((used)) static int FUNC5(
  unsigned mType,         /* The trace type */
  void *pArg,             /* The ShellState pointer */
  void *pP,               /* Usually a pointer to sqlite_stmt */
  void *pX                /* Auxiliary output */
){
  ShellState *p = (ShellState*)pArg;
  sqlite3_stmt *pStmt;
  const char *zSql;
  int nSql;
  if( p->traceOut==0 ) return 0;
  if( mType==SQLITE_TRACE_CLOSE ){
    FUNC4(p->traceOut, "-- closing database connection\n");
    return 0;
  }
  if( mType!=SQLITE_TRACE_ROW && ((const char*)pX)[0]=='-' ){
    zSql = (const char*)pX;
  }else{
    pStmt = (sqlite3_stmt*)pP;
    switch( p->eTraceType ){
      case SHELL_TRACE_EXPANDED: {
        zSql = FUNC0(pStmt);
        break;
      }
#ifdef SQLITE_ENABLE_NORMALIZE
      case SHELL_TRACE_NORMALIZED: {
        zSql = sqlite3_normalized_sql(pStmt);
        break;
      }
#endif
      default: {
        zSql = FUNC2(pStmt);
        break;
      }
    }
  }
  if( zSql==0 ) return 0;
  nSql = FUNC3(zSql);
  while( nSql>0 && zSql[nSql-1]==';' ){ nSql--; }
  switch( mType ){
    case SQLITE_TRACE_ROW:
    case SQLITE_TRACE_STMT: {
      FUNC4(p->traceOut, "%.*s;\n", nSql, zSql);
      break;
    }
    case SQLITE_TRACE_PROFILE: {
      sqlite3_int64 nNanosec = *(sqlite3_int64*)pX;
      FUNC4(p->traceOut, "%.*s; -- %lld ns\n", nSql, zSql, nNanosec);
      break;
    }
  }
  return 0;
}