#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_7__ {int nCol; int /*<<< orphan*/ ** apColName; scalar_t__ pArray; TYPE_2__* pDb; TYPE_1__* pPreStmt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * interp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pStmt; } ;
typedef  TYPE_3__ DbEvalContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(
  DbEvalContext *p,               /* Evaluation context */
  int *pnCol,                     /* OUT: Number of column names */
  Tcl_Obj ***papColName           /* OUT: Array of column names */
){
  /* Compute column names */
  if( 0==p->apColName ){
    sqlite3_stmt *pStmt = p->pPreStmt->pStmt;
    int i;                        /* Iterator variable */
    int nCol;                     /* Number of columns returned by pStmt */
    Tcl_Obj **apColName = 0;      /* Array of column names */

    p->nCol = nCol = FUNC7(pStmt);
    if( nCol>0 && (papColName || p->pArray) ){
      apColName = (Tcl_Obj**)FUNC0( sizeof(Tcl_Obj*)*nCol );
      for(i=0; i<nCol; i++){
        apColName[i] = FUNC5(FUNC8(pStmt,i), -1);
        FUNC2(apColName[i]);
      }
      p->apColName = apColName;
    }

    /* If results are being stored in an array variable, then create
    ** the array(*) entry for that array
    */
    if( p->pArray ){
      Tcl_Interp *interp = p->pDb->interp;
      Tcl_Obj *pColList = FUNC4();
      Tcl_Obj *pStar = FUNC5("*", -1);

      for(i=0; i<nCol; i++){
        FUNC3(interp, pColList, apColName[i]);
      }
      FUNC2(pStar);
      FUNC6(interp, p->pArray, pStar, pColList, 0);
      FUNC1(pStar);
    }
  }

  if( papColName ){
    *papColName = p->apColName;
  }
  if( pnCol ){
    *pnCol = p->nCol;
  }
}