#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dbv; TYPE_3__* pTable; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ sqlite3expert ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_9__ {int nCol; TYPE_1__* aCol; struct TYPE_9__* pNext; } ;
struct TYPE_7__ {int /*<<< orphan*/  zColl; int /*<<< orphan*/  zName; } ;
typedef  TYPE_3__ IdxTable ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 char* FUNC0 (int*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,TYPE_3__**,char**) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char**,char*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(sqlite3expert *p, char **pzErrmsg){
  int rc = FUNC4(p);
  sqlite3_stmt *pSchema = 0;

  /* For each table in the main db schema:
  **
  **   1) Add an entry to the p->pTable list, and
  **   2) Create the equivalent virtual table in dbv.
  */
  rc = FUNC3(p->db, &pSchema, pzErrmsg,
      "SELECT type, name, sql, 1 FROM sqlite_master "
      "WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%%' "
      " UNION ALL "
      "SELECT type, name, sql, 2 FROM sqlite_master "
      "WHERE type = 'trigger'"
      "  AND tbl_name IN(SELECT name FROM sqlite_master WHERE type = 'view') "
      "ORDER BY 4, 1"
  );
  while( rc==SQLITE_OK && SQLITE_ROW==FUNC8(pSchema) ){
    const char *zType = (const char*)FUNC5(pSchema, 0);
    const char *zName = (const char*)FUNC5(pSchema, 1);
    const char *zSql = (const char*)FUNC5(pSchema, 2);

    if( zType[0]=='v' || zType[1]=='r' ){
      rc = FUNC6(p->dbv, zSql, 0, 0, pzErrmsg);
    }else{
      IdxTable *pTab;
      rc = FUNC2(p->db, zName, &pTab, pzErrmsg);
      if( rc==SQLITE_OK ){
        int i;
        char *zInner = 0;
        char *zOuter = 0;
        pTab->pNext = p->pTable;
        p->pTable = pTab;

        /* The statement the vtab will pass to sqlite3_declare_vtab() */
        zInner = FUNC0(&rc, 0, "CREATE TABLE x(");
        for(i=0; i<pTab->nCol; i++){
          zInner = FUNC0(&rc, zInner, "%s%Q COLLATE %s", 
              (i==0 ? "" : ", "), pTab->aCol[i].zName, pTab->aCol[i].zColl
          );
        }
        zInner = FUNC0(&rc, zInner, ")");

        /* The CVT statement to create the vtab */
        zOuter = FUNC0(&rc, 0, 
            "CREATE VIRTUAL TABLE %Q USING expert(%Q)", zName, zInner
        );
        if( rc==SQLITE_OK ){
          rc = FUNC6(p->dbv, zOuter, 0, 0, pzErrmsg);
        }
        FUNC7(zInner);
        FUNC7(zOuter);
      }
    }
  }
  FUNC1(&rc, pSchema);
  return rc;
}