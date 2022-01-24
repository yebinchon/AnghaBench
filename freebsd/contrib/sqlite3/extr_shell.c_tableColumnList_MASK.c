#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  azCol ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
 int /*<<< orphan*/  SHFLG_PreserveRowid ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char** FUNC9 (char**,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char **FUNC13(ShellState *p, const char *zTab){
  char **azCol = 0;
  sqlite3_stmt *pStmt;
  char *zSql;
  int nCol = 0;
  int nAlloc = 0;
  int nPK = 0;       /* Number of PRIMARY KEY columns seen */
  int isIPK = 0;     /* True if one PRIMARY KEY column of type INTEGER */
  int preserveRowid = FUNC0(p, SHFLG_PreserveRowid);
  int rc;

  zSql = FUNC7("PRAGMA table_info=%Q", zTab);
  rc = FUNC8(p->db, zSql, -1, &pStmt, 0);
  FUNC6(zSql);
  if( rc ) return 0;
  while( FUNC10(pStmt)==SQLITE_ROW ){
    if( nCol>=nAlloc-2 ){
      nAlloc = nAlloc*2 + nCol + 10;
      azCol = FUNC9(azCol, nAlloc*sizeof(azCol[0]));
      if( azCol==0 ) FUNC2();
    }
    azCol[++nCol] = FUNC7("%s", FUNC4(pStmt, 1));
    if( FUNC3(pStmt, 5) ){
      nPK++;
      if( nPK==1
       && FUNC11((const char*)FUNC4(pStmt,2),
                          "INTEGER")==0
      ){
        isIPK = 1;
      }else{
        isIPK = 0;
      }
    }
  }
  FUNC5(pStmt);
  if( azCol==0 ) return 0;
  azCol[0] = 0;
  azCol[nCol+1] = 0;

  /* The decision of whether or not a rowid really needs to be preserved
  ** is tricky.  We never need to preserve a rowid for a WITHOUT ROWID table
  ** or a table with an INTEGER PRIMARY KEY.  We are unable to preserve
  ** rowids on tables where the rowid is inaccessible because there are other
  ** columns in the table named "rowid", "_rowid_", and "oid".
  */
  if( preserveRowid && isIPK ){
    /* If a single PRIMARY KEY column with type INTEGER was seen, then it
    ** might be an alise for the ROWID.  But it might also be a WITHOUT ROWID
    ** table or a INTEGER PRIMARY KEY DESC column, neither of which are
    ** ROWID aliases.  To distinguish these cases, check to see if
    ** there is a "pk" entry in "PRAGMA index_list".  There will be
    ** no "pk" index if the PRIMARY KEY really is an alias for the ROWID.
    */
    zSql = FUNC7("SELECT 1 FROM pragma_index_list(%Q)"
                           " WHERE origin='pk'", zTab);
    rc = FUNC8(p->db, zSql, -1, &pStmt, 0);
    FUNC6(zSql);
    if( rc ){
      FUNC1(azCol);
      return 0;
    }
    rc = FUNC10(pStmt);
    FUNC5(pStmt);
    preserveRowid = rc==SQLITE_ROW;
  }
  if( preserveRowid ){
    /* Only preserve the rowid if we can find a name to use for the
    ** rowid */
    static char *azRowid[] = { "rowid", "_rowid_", "oid" };
    int i, j;
    for(j=0; j<3; j++){
      for(i=1; i<=nCol; i++){
        if( FUNC11(azRowid[j],azCol[i])==0 ) break;
      }
      if( i>nCol ){
        /* At this point, we know that azRowid[j] is not the name of any
        ** ordinary column in the table.  Verify that azRowid[j] is a valid
        ** name for the rowid before adding it to azCol[0].  WITHOUT ROWID
        ** tables will fail this last check */
        rc = FUNC12(p->db,0,zTab,azRowid[j],0,0,0,0,0);
        if( rc==SQLITE_OK ) azCol[0] = azRowid[j];
        break;
      }
    }
  }
  return azCol;
}