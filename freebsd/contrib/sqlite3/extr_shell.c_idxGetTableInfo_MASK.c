#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {char* zName; char* zColl; int /*<<< orphan*/  iPk; } ;
struct TYPE_6__ {int nCol; char* zName; TYPE_2__* aCol; } ;
typedef  TYPE_1__ IdxTable ;
typedef  TYPE_2__ IdxColumn ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,char const*,char const*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(
  sqlite3 *db,                    /* Database connection to read details from */
  const char *zTab,               /* Table name */
  IdxTable **ppOut,               /* OUT: New object (if successful) */
  char **pzErrmsg                 /* OUT: Error message (if not) */
){
  sqlite3_stmt *p1 = 0;
  int nCol = 0;
  int nTab = FUNC0(zTab);
  int nByte = sizeof(IdxTable) + nTab + 1;
  IdxTable *pNew = 0;
  int rc, rc2;
  char *pCsr = 0;

  rc = FUNC3(db, &p1, pzErrmsg, "PRAGMA table_info=%Q", zTab);
  while( rc==SQLITE_OK && SQLITE_ROW==FUNC9(p1) ){
    const char *zCol = (const char*)FUNC6(p1, 1);
    nByte += 1 + FUNC0(zCol);
    rc = FUNC10(
        db, "main", zTab, zCol, 0, &zCol, 0, 0, 0
    );
    nByte += 1 + FUNC0(zCol);
    nCol++;
  }
  rc2 = FUNC8(p1);
  if( rc==SQLITE_OK ) rc = rc2;

  nByte += sizeof(IdxColumn) * nCol;
  if( rc==SQLITE_OK ){
    pNew = FUNC2(&rc, nByte);
  }
  if( rc==SQLITE_OK ){
    pNew->aCol = (IdxColumn*)&pNew[1];
    pNew->nCol = nCol;
    pCsr = (char*)&pNew->aCol[nCol];
  }

  nCol = 0;
  while( rc==SQLITE_OK && SQLITE_ROW==FUNC9(p1) ){
    const char *zCol = (const char*)FUNC6(p1, 1);
    int nCopy = FUNC0(zCol) + 1;
    pNew->aCol[nCol].zName = pCsr;
    pNew->aCol[nCol].iPk = FUNC5(p1, 5);
    FUNC4(pCsr, zCol, nCopy);
    pCsr += nCopy;

    rc = FUNC10(
        db, "main", zTab, zCol, 0, &zCol, 0, 0, 0
    );
    if( rc==SQLITE_OK ){
      nCopy = FUNC0(zCol) + 1;
      pNew->aCol[nCol].zColl = pCsr;
      FUNC4(pCsr, zCol, nCopy);
      pCsr += nCopy;
    }

    nCol++;
  }
  FUNC1(&rc, p1);

  if( rc!=SQLITE_OK ){
    FUNC7(pNew);
    pNew = 0;
  }else{
    pNew->zName = pCsr;
    FUNC4(pNew->zName, zTab, nTab+1);
  }

  *ppOut = pNew;
  return rc;
}