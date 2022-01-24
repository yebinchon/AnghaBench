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
struct TYPE_5__ {char* z; } ;
typedef  TYPE_1__ ShellText ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static char *FUNC11(
  sqlite3 *db,            /* The database connection containing the vtab */
  const char *zSchema,    /* Schema of the database holding the vtab */
  const char *zName       /* The name of the virtual table */
){
  sqlite3_stmt *pStmt = 0;
  char *zSql;
  ShellText s;
  char cQuote;
  char *zDiv = "(";
  int nRow = 0;

  zSql = FUNC7("PRAGMA \"%w\".table_info=%Q;",
                         zSchema ? zSchema : "main", zName);
  FUNC8(db, zSql, -1, &pStmt, 0);
  FUNC6(zSql);
  FUNC2(&s);
  if( zSchema ){
    cQuote = FUNC3(zSchema);
    if( cQuote && FUNC10(zSchema,"temp")==0 ) cQuote = 0;
    FUNC0(&s, zSchema, cQuote);
    FUNC0(&s, ".", 0);
  }
  cQuote = FUNC3(zName);
  FUNC0(&s, zName, cQuote);
  while( FUNC9(pStmt)==SQLITE_ROW ){
    const char *zCol = (const char*)FUNC4(pStmt, 1);
    nRow++;
    FUNC0(&s, zDiv, 0);
    zDiv = ",";
    cQuote = FUNC3(zCol);
    FUNC0(&s, zCol, cQuote);
  }
  FUNC0(&s, ")", 0);
  FUNC5(pStmt);
  if( nRow==0 ){
    FUNC1(&s);
    s.z = 0;
  }
  return s.z;
}