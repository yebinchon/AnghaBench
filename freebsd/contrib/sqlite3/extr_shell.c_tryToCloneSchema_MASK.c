#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,unsigned char const*,...) ; 

__attribute__((used)) static void FUNC12(
  ShellState *p,
  sqlite3 *newDb,
  const char *zWhere,
  void (*xForEach)(ShellState*,sqlite3*,const char*)
){
  sqlite3_stmt *pQuery = 0;
  char *zQuery = 0;
  int rc;
  const unsigned char *zName;
  const unsigned char *zSql;
  char *zErrMsg = 0;

  zQuery = FUNC8("SELECT name, sql FROM sqlite_master"
                           " WHERE %s", zWhere);
  rc = FUNC9(p->db, zQuery, -1, &pQuery, 0);
  if( rc ){
    FUNC11(stderr, "Error: (%d) %s on [%s]\n",
                    FUNC5(p->db), FUNC3(p->db),
                    zQuery);
    goto end_schema_xfer;
  }
  while( (rc = FUNC10(pQuery))==SQLITE_ROW ){
    zName = FUNC2(pQuery, 0);
    zSql = FUNC2(pQuery, 1);
    FUNC1("%s... ", zName); FUNC0(stdout);
    FUNC4(newDb, (const char*)zSql, 0, 0, &zErrMsg);
    if( zErrMsg ){
      FUNC11(stderr, "Error: %s\nSQL: [%s]\n", zErrMsg, zSql);
      FUNC7(zErrMsg);
      zErrMsg = 0;
    }
    if( xForEach ){
      xForEach(p, newDb, (const char*)zName);
    }
    FUNC1("done\n");
  }
  if( rc!=SQLITE_DONE ){
    FUNC6(pQuery);
    FUNC7(zQuery);
    zQuery = FUNC8("SELECT name, sql FROM sqlite_master"
                             " WHERE %s ORDER BY rowid DESC", zWhere);
    rc = FUNC9(p->db, zQuery, -1, &pQuery, 0);
    if( rc ){
      FUNC11(stderr, "Error: (%d) %s on [%s]\n",
                      FUNC5(p->db), FUNC3(p->db),
                      zQuery);
      goto end_schema_xfer;
    }
    while( (rc = FUNC10(pQuery))==SQLITE_ROW ){
      zName = FUNC2(pQuery, 0);
      zSql = FUNC2(pQuery, 1);
      FUNC1("%s... ", zName); FUNC0(stdout);
      FUNC4(newDb, (const char*)zSql, 0, 0, &zErrMsg);
      if( zErrMsg ){
        FUNC11(stderr, "Error: %s\nSQL: [%s]\n", zErrMsg, zSql);
        FUNC7(zErrMsg);
        zErrMsg = 0;
      }
      if( xForEach ){
        xForEach(p, newDb, (const char*)zName);
      }
      FUNC1("done\n");
    }
  }
end_schema_xfer:
  FUNC6(pQuery);
  FUNC7(zQuery);
}