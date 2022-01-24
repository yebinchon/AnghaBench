#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const*,char const*,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *pCtx,
  int nVal,
  sqlite3_value **apVal
){
  sqlite3 *db = FUNC1(pCtx);
  const char *zParent;
  const char *zParentCol;
  const char *zParentSeq;
  const char *zChild;
  const char *zChildCol;
  const char *zChildSeq = 0;  /* Initialize to avoid false-positive warning */
  int rc;

  FUNC0( nVal==4 );
  zParent = (const char*)FUNC7(apVal[0]);
  zParentCol = (const char*)FUNC7(apVal[1]);
  zChild = (const char*)FUNC7(apVal[2]);
  zChildCol = (const char*)FUNC7(apVal[3]);

  FUNC4(pCtx, "", -1, SQLITE_STATIC);
  rc = FUNC6(
      db, "main", zParent, zParentCol, 0, &zParentSeq, 0, 0, 0
  );
  if( rc==SQLITE_OK ){
    rc = FUNC6(
        db, "main", zChild, zChildCol, 0, &zChildSeq, 0, 0, 0
    );
  }

  if( rc==SQLITE_OK && FUNC5(zParentSeq, zChildSeq) ){
    char *z = FUNC3(" COLLATE %s", zParentSeq);
    FUNC4(pCtx, z, -1, SQLITE_TRANSIENT);
    FUNC2(z);
  }
}