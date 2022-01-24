#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ ShellState ;

/* Variables and functions */
#define  SQLITE_BLOB 132 
 int SQLITE_DONE ; 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (int) ; 
 char* FUNC21 (char*,char const*) ; 
 int FUNC22 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,char*,char const*) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC26 (char const*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static void FUNC28(
  ShellState *p,
  sqlite3 *newDb,
  const char *zTable
){
  sqlite3_stmt *pQuery = 0;
  sqlite3_stmt *pInsert = 0;
  char *zQuery = 0;
  char *zInsert = 0;
  int rc;
  int i, j, n;
  int nTable = FUNC26(zTable);
  int k = 0;
  int cnt = 0;
  const int spinRate = 10000;

  zQuery = FUNC21("SELECT * FROM \"%w\"", zTable);
  rc = FUNC22(p->db, zQuery, -1, &pQuery, 0);
  if( rc ){
    FUNC27(stderr, "Error %d: %s on [%s]\n",
            FUNC17(p->db), FUNC16(p->db),
            zQuery);
    goto end_data_xfer;
  }
  n = FUNC11(pQuery);
  zInsert = FUNC20(200 + nTable + n*3);
  if( zInsert==0 ) FUNC3();
  FUNC24(200+nTable,zInsert,
                   "INSERT OR IGNORE INTO \"%s\" VALUES(?", zTable);
  i = FUNC26(zInsert);
  for(j=1; j<n; j++){
    FUNC1(zInsert+i, ",?", 2);
    i += 2;
  }
  FUNC1(zInsert+i, ");", 3);
  rc = FUNC22(newDb, zInsert, -1, &pInsert, 0);
  if( rc ){
    FUNC27(stderr, "Error %d: %s on [%s]\n",
            FUNC17(newDb), FUNC16(newDb),
            zQuery);
    goto end_data_xfer;
  }
  for(k=0; k<2; k++){
    while( (rc = FUNC25(pQuery))==SQLITE_ROW ){
      for(i=0; i<n; i++){
        switch( FUNC15(pQuery, i) ){
          case SQLITE_NULL: {
            FUNC7(pInsert, i+1);
            break;
          }
          case SQLITE_INTEGER: {
            FUNC6(pInsert, i+1, FUNC13(pQuery,i));
            break;
          }
          case SQLITE_FLOAT: {
            FUNC5(pInsert, i+1, FUNC12(pQuery,i));
            break;
          }
          case SQLITE_TEXT: {
            FUNC8(pInsert, i+1,
                             (const char*)FUNC14(pQuery,i),
                             -1, SQLITE_STATIC);
            break;
          }
          case SQLITE_BLOB: {
            FUNC4(pInsert, i+1, FUNC9(pQuery,i),
                                            FUNC10(pQuery,i),
                                            SQLITE_STATIC);
            break;
          }
        }
      } /* End for */
      rc = FUNC25(pInsert);
      if( rc!=SQLITE_OK && rc!=SQLITE_ROW && rc!=SQLITE_DONE ){
        FUNC27(stderr, "Error %d: %s\n", FUNC17(newDb),
                        FUNC16(newDb));
      }
      FUNC23(pInsert);
      cnt++;
      if( (cnt%spinRate)==0 ){
        FUNC2("%c\b", "|/-\\"[(cnt/spinRate)%4]);
        FUNC0(stdout);
      }
    } /* End while */
    if( rc==SQLITE_DONE ) break;
    FUNC18(pQuery);
    FUNC19(zQuery);
    zQuery = FUNC21("SELECT * FROM \"%w\" ORDER BY rowid DESC;",
                             zTable);
    rc = FUNC22(p->db, zQuery, -1, &pQuery, 0);
    if( rc ){
      FUNC27(stderr, "Warning: cannot step \"%s\" backwards", zTable);
      break;
    }
  } /* End for(k=0...) */

end_data_xfer:
  FUNC18(pQuery);
  FUNC18(pInsert);
  FUNC19(zQuery);
  FUNC19(zInsert);
}