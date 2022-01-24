#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int writableSchema; char* zDestTable; int mode; int cMode; int /*<<< orphan*/  nErr; int /*<<< orphan*/  db; int /*<<< orphan*/  out; } ;
struct TYPE_8__ {char* z; } ;
typedef  TYPE_1__ ShellText ;
typedef  TYPE_2__ ShellState ;

/* Variables and functions */
 int MODE_Insert ; 
 int SQLITE_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char const*,char const*,char const*) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 scalar_t__ FUNC13 (char const*,char*,int) ; 
 char** FUNC14 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC17(void *pArg, int nArg, char **azArg, char **azNotUsed){
  int rc;
  const char *zTable;
  const char *zType;
  const char *zSql;
  ShellState *p = (ShellState *)pArg;

  FUNC0(azNotUsed);
  if( nArg!=3 || azArg==0 ) return 0;
  zTable = azArg[0];
  zType = azArg[1];
  zSql = azArg[2];

  if( FUNC12(zTable, "sqlite_sequence")==0 ){
    FUNC7(p->out, "DELETE FROM sqlite_sequence;\n");
  }else if( FUNC11("sqlite_stat?", zTable)==0 ){
    FUNC7(p->out, "ANALYZE sqlite_master;\n");
  }else if( FUNC13(zTable, "sqlite_", 7)==0 ){
    return 0;
  }else if( FUNC13(zSql, "CREATE VIRTUAL TABLE", 20)==0 ){
    char *zIns;
    if( !p->writableSchema ){
      FUNC7(p->out, "PRAGMA writable_schema=ON;\n");
      p->writableSchema = 1;
    }
    zIns = FUNC10(
       "INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)"
       "VALUES('table','%q','%q',0,'%q');",
       zTable, zTable, zSql);
    FUNC16(p->out, "%s\n", zIns);
    FUNC9(zIns);
    return 0;
  }else{
    FUNC5(p->out, zSql, ";\n");
  }

  if( FUNC12(zType, "table")==0 ){
    ShellText sSelect;
    ShellText sTable;
    char **azCol;
    int i;
    char *savedDestTable;
    int savedMode;

    azCol = FUNC14(p, zTable);
    if( azCol==0 ){
      p->nErr++;
      return 0;
    }

    /* Always quote the table name, even if it appears to be pure ascii,
    ** in case it is a keyword. Ex:  INSERT INTO "table" ... */
    FUNC4(&sTable);
    FUNC1(&sTable, zTable, FUNC6(zTable));
    /* If preserving the rowid, add a column list after the table name.
    ** In other words:  "INSERT INTO tab(rowid,a,b,c,...) VALUES(...)"
    ** instead of the usual "INSERT INTO tab VALUES(...)".
    */
    if( azCol[0] ){
      FUNC1(&sTable, "(", 0);
      FUNC1(&sTable, azCol[0], 0);
      for(i=1; azCol[i]; i++){
        FUNC1(&sTable, ",", 0);
        FUNC1(&sTable, azCol[i], FUNC6(azCol[i]));
      }
      FUNC1(&sTable, ")", 0);
    }

    /* Build an appropriate SELECT statement */
    FUNC4(&sSelect);
    FUNC1(&sSelect, "SELECT ", 0);
    if( azCol[0] ){
      FUNC1(&sSelect, azCol[0], 0);
      FUNC1(&sSelect, ",", 0);
    }
    for(i=1; azCol[i]; i++){
      FUNC1(&sSelect, azCol[i], FUNC6(azCol[i]));
      if( azCol[i+1] ){
        FUNC1(&sSelect, ",", 0);
      }
    }
    FUNC2(azCol);
    FUNC1(&sSelect, " FROM ", 0);
    FUNC1(&sSelect, zTable, FUNC6(zTable));

    savedDestTable = p->zDestTable;
    savedMode = p->mode;
    p->zDestTable = sTable.z;
    p->mode = p->cMode = MODE_Insert;
    rc = FUNC8(p, sSelect.z, 0);
    if( (rc&0xff)==SQLITE_CORRUPT ){
      FUNC7(p->out, "/****** CORRUPTION ERROR *******/\n");
      FUNC15(p->db);
      FUNC8(p, sSelect.z, 0);
      FUNC15(p->db);
    }
    p->zDestTable = savedDestTable;
    p->mode = savedMode;
    FUNC3(&sTable);
    FUNC3(&sSelect);
    if( rc ) p->nErr++;
  }
  return 0;
}