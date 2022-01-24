#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_27__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_34__ {TYPE_4__* pList; } ;
struct TYPE_39__ {struct TYPE_39__* pLeft; TYPE_1__ x; } ;
struct TYPE_38__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_37__ {TYPE_27__* db; scalar_t__ nErr; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_36__ {TYPE_5__* pExpr; } ;
struct TYPE_35__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ ExprList ;
typedef  TYPE_5__ Expr ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int IN_INDEX_EPH ; 
 int IN_INDEX_INDEX_ASC ; 
 int IN_INDEX_INDEX_DESC ; 
 int IN_INDEX_MEMBERSHIP ; 
 int IN_INDEX_NOOP ; 
 int IN_INDEX_NOOP_OK ; 
 int IN_INDEX_ROWID ; 
 int /*<<< orphan*/  OP_Affinity ; 
 int /*<<< orphan*/  OP_BitAnd ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Eq ; 
 int /*<<< orphan*/  OP_Found ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_IsNull ; 
 int /*<<< orphan*/  OP_Ne ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_NotFound ; 
 int /*<<< orphan*/  OP_NotNull ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_SeekRowid ; 
 int /*<<< orphan*/  P4_COLLSEQ ; 
 int /*<<< orphan*/  P4_STATIC ; 
 scalar_t__ SQLITE_AFF_REAL ; 
 char SQLITE_JUMPIFNULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_3__*,TYPE_5__*,int*) ; 
 char* FUNC7 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_27__*,...) ; 
 scalar_t__ FUNC9 (TYPE_27__*,int) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_5__*,int) ; 
 int FUNC14 (TYPE_3__*,TYPE_5__*,int*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC16 (TYPE_5__*) ; 
 int FUNC17 (TYPE_3__*,TYPE_5__*,int,int*,int*,int*) ; 
 int FUNC18 (TYPE_3__*,int) ; 
 int FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,void*,int) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int FUNC29 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC31 (TYPE_5__*,int) ; 

__attribute__((used)) static void FUNC32(
  Parse *pParse,        /* Parsing and code generating context */
  Expr *pExpr,          /* The IN expression */
  int destIfFalse,      /* Jump here if LHS is not contained in the RHS */
  int destIfNull        /* Jump here if the results are unknown due to NULLs */
){
  int rRhsHasNull = 0;  /* Register that is true if RHS contains NULL values */
  int eType;            /* Type of the RHS */
  int rLhs;             /* Register(s) holding the LHS values */
  int rLhsOrig;         /* LHS values prior to reordering by aiMap[] */
  Vdbe *v;              /* Statement under construction */
  int *aiMap = 0;       /* Map from vector field to index column */
  char *zAff = 0;       /* Affinity string for comparisons */
  int nVector;          /* Size of vectors for this IN operator */
  int iDummy;           /* Dummy parameter to exprCodeVector() */
  Expr *pLeft;          /* The LHS of the IN operator */
  int i;                /* loop counter */
  int destStep2;        /* Where to jump when NULLs seen in step 2 */
  int destStep6 = 0;    /* Start of code for Step 6 */
  int addrTruthOp;      /* Address of opcode that determines the IN is true */
  int destNotNull;      /* Jump here if a comparison is not true in step 6 */
  int addrTop;          /* Top of the step-6 loop */ 
  int iTab = 0;         /* Index to use */

  pLeft = pExpr->pLeft;
  if( FUNC12(pParse, pExpr) ) return;
  zAff = FUNC7(pParse, pExpr);
  nVector = FUNC16(pExpr->pLeft);
  aiMap = (int*)FUNC9(
      pParse->db, nVector*(sizeof(int) + sizeof(char)) + 1
  );
  if( pParse->db->mallocFailed ) goto sqlite3ExprCodeIN_oom_error;

  /* Attempt to compute the RHS. After this step, if anything other than
  ** IN_INDEX_NOOP is returned, the table opened with cursor iTab
  ** contains the values that make up the RHS. If IN_INDEX_NOOP is returned,
  ** the RHS has not yet been coded.  */
  v = pParse->pVdbe;
  FUNC5( v!=0 );       /* OOM detected prior to this routine */
  FUNC4((v, "begin IN expr"));
  eType = FUNC17(pParse, pExpr,
                             IN_INDEX_MEMBERSHIP | IN_INDEX_NOOP_OK,
                             destIfFalse==destIfNull ? 0 : &rRhsHasNull,
                             aiMap, &iTab);

  FUNC5( pParse->nErr || nVector==1 || eType==IN_INDEX_EPH
       || eType==IN_INDEX_INDEX_ASC || eType==IN_INDEX_INDEX_DESC 
  );
#ifdef SQLITE_DEBUG
  /* Confirm that aiMap[] contains nVector integer values between 0 and
  ** nVector-1. */
  for(i=0; i<nVector; i++){
    int j, cnt;
    for(cnt=j=0; j<nVector; j++) if( aiMap[j]==i ) cnt++;
    assert( cnt==1 );
  }
#endif

  /* Code the LHS, the <expr> from "<expr> IN (...)". If the LHS is a 
  ** vector, then it is stored in an array of nVector registers starting 
  ** at r1.
  **
  ** sqlite3FindInIndex() might have reordered the fields of the LHS vector
  ** so that the fields are in the same order as an existing index.   The
  ** aiMap[] array contains a mapping from the original LHS field order to
  ** the field order that matches the RHS index.
  */
  rLhsOrig = FUNC6(pParse, pLeft, &iDummy);
  for(i=0; i<nVector && aiMap[i]==i; i++){} /* Are LHS fields reordered? */
  if( i==nVector ){
    /* LHS fields are not reordered */
    rLhs = rLhsOrig;
  }else{
    /* Need to reorder the LHS fields according to aiMap */
    rLhs = FUNC18(pParse, nVector);
    for(i=0; i<nVector; i++){
      FUNC23(v, OP_Copy, rLhsOrig+i, rLhs+aiMap[i], 0);
    }
  }

  /* If sqlite3FindInIndex() did not find or create an index that is
  ** suitable for evaluating the IN operator, then evaluate using a
  ** sequence of comparisons.
  **
  ** This is step (1) in the in-operator.md optimized algorithm.
  */
  if( eType==IN_INDEX_NOOP ){
    ExprList *pList = pExpr->x.pList;
    CollSeq *pColl = FUNC15(pParse, pExpr->pLeft);
    int labelOk = FUNC29(pParse);
    int r2, regToFree;
    int regCkNull = 0;
    int ii;
    int bLhsReal;  /* True if the LHS of the IN has REAL affinity */
    FUNC5( !FUNC0(pExpr, EP_xIsSelect) );
    if( destIfNull!=destIfFalse ){
      regCkNull = FUNC19(pParse);
      FUNC23(v, OP_BitAnd, rLhs, rLhs, regCkNull);
    }
    bLhsReal = FUNC10(pExpr->pLeft)==SQLITE_AFF_REAL;
    for(ii=0; ii<pList->nExpr; ii++){
      if( bLhsReal ){
        r2 = regToFree = FUNC19(pParse);
        FUNC13(pParse, pList->a[ii].pExpr, r2);
        FUNC24(v, OP_Affinity, r2, 1, 0, "E", P4_STATIC);
      }else{
        r2 = FUNC14(pParse, pList->a[ii].pExpr, &regToFree);
      }
      if( regCkNull && FUNC11(pList->a[ii].pExpr) ){
        FUNC23(v, OP_BitAnd, regCkNull, r2, regCkNull);
      }
      if( ii<pList->nExpr-1 || destIfNull!=destIfFalse ){
        FUNC24(v, OP_Eq, rLhs, labelOk, r2,
                          (void*)pColl, P4_COLLSEQ);
        FUNC3(v, ii<pList->nExpr-1);
        FUNC3(v, ii==pList->nExpr-1);
        FUNC26(v, zAff[0]);
      }else{
        FUNC5( destIfNull==destIfFalse );
        FUNC24(v, OP_Ne, rLhs, destIfFalse, r2,
                          (void*)pColl, P4_COLLSEQ); FUNC2(v);
        FUNC26(v, zAff[0] | SQLITE_JUMPIFNULL);
      }
      FUNC20(pParse, regToFree);
    }
    if( regCkNull ){
      FUNC22(v, OP_IsNull, regCkNull, destIfNull); FUNC2(v);
      FUNC27(v, destIfFalse);
    }
    FUNC30(v, labelOk);
    FUNC20(pParse, regCkNull);
    goto sqlite3ExprCodeIN_finished;
  }

  /* Step 2: Check to see if the LHS contains any NULL columns.  If the
  ** LHS does contain NULLs then the result must be either FALSE or NULL.
  ** We will then skip the binary search of the RHS.
  */
  if( destIfNull==destIfFalse ){
    destStep2 = destIfFalse;
  }else{
    destStep2 = destStep6 = FUNC29(pParse);
  }
  for(i=0; i<nVector; i++){
    Expr *p = FUNC31(pExpr->pLeft, i);
    if( FUNC11(p) ){
      FUNC22(v, OP_IsNull, rLhs+i, destStep2);
      FUNC2(v);
    }
  }

  /* Step 3.  The LHS is now known to be non-NULL.  Do the binary search
  ** of the RHS using the LHS as a probe.  If found, the result is
  ** true.
  */
  if( eType==IN_INDEX_ROWID ){
    /* In this case, the RHS is the ROWID of table b-tree and so we also
    ** know that the RHS is non-NULL.  Hence, we combine steps 3 and 4
    ** into a single opcode. */
    FUNC23(v, OP_SeekRowid, iTab, destIfFalse, rLhs);
    FUNC2(v);
    addrTruthOp = FUNC21(v, OP_Goto);  /* Return True */
  }else{
    FUNC24(v, OP_Affinity, rLhs, nVector, 0, zAff, nVector);
    if( destIfFalse==destIfNull ){
      /* Combine Step 3 and Step 5 into a single opcode */
      FUNC25(v, OP_NotFound, iTab, destIfFalse,
                           rLhs, nVector); FUNC2(v);
      goto sqlite3ExprCodeIN_finished;
    }
    /* Ordinary Step 3, for the case where FALSE and NULL are distinct */
    addrTruthOp = FUNC25(v, OP_Found, iTab, 0,
                                      rLhs, nVector); FUNC2(v);
  }

  /* Step 4.  If the RHS is known to be non-NULL and we did not find
  ** an match on the search above, then the result must be FALSE.
  */
  if( rRhsHasNull && nVector==1 ){
    FUNC22(v, OP_NotNull, rRhsHasNull, destIfFalse);
    FUNC2(v);
  }

  /* Step 5.  If we do not care about the difference between NULL and
  ** FALSE, then just return false. 
  */
  if( destIfFalse==destIfNull ) FUNC27(v, destIfFalse);

  /* Step 6: Loop through rows of the RHS.  Compare each row to the LHS.
  ** If any comparison is NULL, then the result is NULL.  If all
  ** comparisons are FALSE then the final result is FALSE.
  **
  ** For a scalar LHS, it is sufficient to check just the first row
  ** of the RHS.
  */
  if( destStep6 ) FUNC30(v, destStep6);
  addrTop = FUNC22(v, OP_Rewind, iTab, destIfFalse);
  FUNC2(v);
  if( nVector>1 ){
    destNotNull = FUNC29(pParse);
  }else{
    /* For nVector==1, combine steps 6 and 7 by immediately returning
    ** FALSE if the first comparison is not NULL */
    destNotNull = destIfFalse;
  }
  for(i=0; i<nVector; i++){
    Expr *p;
    CollSeq *pColl;
    int r3 = FUNC19(pParse);
    p = FUNC31(pLeft, i);
    pColl = FUNC15(pParse, p);
    FUNC23(v, OP_Column, iTab, i, r3);
    FUNC24(v, OP_Ne, rLhs+i, destNotNull, r3,
                      (void*)pColl, P4_COLLSEQ);
    FUNC2(v);
    FUNC20(pParse, r3);
  }
  FUNC22(v, OP_Goto, 0, destIfNull);
  if( nVector>1 ){
    FUNC30(v, destNotNull);
    FUNC22(v, OP_Next, iTab, addrTop+1);
    FUNC2(v);

    /* Step 7:  If we reach this point, we know that the result must
    ** be false. */
    FUNC22(v, OP_Goto, 0, destIfFalse);
  }

  /* Jumps here in order to return true. */
  FUNC28(v, addrTruthOp);

sqlite3ExprCodeIN_finished:
  if( rLhs!=rLhsOrig ) FUNC20(pParse, rLhs);
  FUNC1((v, "end IN expr"));
sqlite3ExprCodeIN_oom_error:
  FUNC8(pParse->db, aiMap);
  FUNC8(pParse->db, zAff);
}