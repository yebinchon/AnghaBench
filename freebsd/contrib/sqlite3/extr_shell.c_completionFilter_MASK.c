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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_3__ {scalar_t__ nPrefix; scalar_t__ zPrefix; int nLine; char* zLine; int /*<<< orphan*/  ePhase; scalar_t__ iRowid; } ;
typedef  TYPE_1__ completion_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLETION_FIRST_PHASE ; 
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char) ; 
 void* FUNC3 (char*,int,...) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  completion_cursor *pCur = (completion_cursor *)pVtabCursor;
  int iArg = 0;
  (void)(idxStr);   /* Unused parameter */
  (void)(argc);     /* Unused parameter */
  FUNC0(pCur);
  if( idxNum & 1 ){
    pCur->nPrefix = FUNC4(argv[iArg]);
    if( pCur->nPrefix>0 ){
      pCur->zPrefix = FUNC3("%s", FUNC5(argv[iArg]));
      if( pCur->zPrefix==0 ) return SQLITE_NOMEM;
    }
    iArg = 1;
  }
  if( idxNum & 2 ){
    pCur->nLine = FUNC4(argv[iArg]);
    if( pCur->nLine>0 ){
      pCur->zLine = FUNC3("%s", FUNC5(argv[iArg]));
      if( pCur->zLine==0 ) return SQLITE_NOMEM;
    }
  }
  if( pCur->zLine!=0 && pCur->zPrefix==0 ){
    int i = pCur->nLine;
    while( i>0 && (FUNC2(pCur->zLine[i-1]) || pCur->zLine[i-1]=='_') ){
      i--;
    }
    pCur->nPrefix = pCur->nLine - i;
    if( pCur->nPrefix>0 ){
      pCur->zPrefix = FUNC3("%.*s", pCur->nPrefix, pCur->zLine + i);
      if( pCur->zPrefix==0 ) return SQLITE_NOMEM;
    }
  }
  pCur->iRowid = 0;
  pCur->ePhase = COMPLETION_FIRST_PHASE;
  return FUNC1(pVtabCursor);
}