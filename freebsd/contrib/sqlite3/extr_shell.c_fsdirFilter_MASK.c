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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_4__ {char const* zBase; int nBase; scalar_t__ zPath; int /*<<< orphan*/  sStat; } ;
typedef  TYPE_1__ fsdir_cursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 void* FUNC4 (char*,char const*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_vtab_cursor *cur, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  const char *zDir = 0;
  fsdir_cursor *pCur = (fsdir_cursor*)cur;
  (void)idxStr;
  FUNC2(pCur);

  if( idxNum==0 ){
    FUNC3(pCur, "table function fsdir requires an argument");
    return SQLITE_ERROR;
  }

  FUNC0( argc==idxNum && (argc==1 || argc==2) );
  zDir = (const char*)FUNC5(argv[0]);
  if( zDir==0 ){
    FUNC3(pCur, "table function fsdir requires a non-NULL argument");
    return SQLITE_ERROR;
  }
  if( argc==2 ){
    pCur->zBase = (const char*)FUNC5(argv[1]);
  }
  if( pCur->zBase ){
    pCur->nBase = (int)FUNC6(pCur->zBase)+1;
    pCur->zPath = FUNC4("%s/%s", pCur->zBase, zDir);
  }else{
    pCur->zPath = FUNC4("%s", zDir);
  }

  if( pCur->zPath==0 ){
    return SQLITE_NOMEM;
  }
  if( FUNC1(pCur->zPath, &pCur->sStat) ){
    FUNC3(pCur, "cannot stat file: %s", pCur->zPath);
    return SQLITE_ERROR;
  }

  return SQLITE_OK;
}