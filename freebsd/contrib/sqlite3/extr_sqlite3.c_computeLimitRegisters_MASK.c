#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_10__ {scalar_t__ op; scalar_t__ pLeft; scalar_t__ pRight; } ;
struct TYPE_9__ {int nMem; } ;
struct TYPE_8__ {int iLimit; scalar_t__ nSelectRow; int iOffset; int /*<<< orphan*/  selFlags; TYPE_3__* pLimit; } ;
typedef  TYPE_1__ Select ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  OP_IfNot ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_MustBeInt ; 
 int /*<<< orphan*/  OP_OffsetLimit ; 
 int /*<<< orphan*/  SF_FixedLimit ; 
 scalar_t__ TK_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(Parse *pParse, Select *p, int iBreak){
  Vdbe *v = 0;
  int iLimit = 0;
  int iOffset;
  int n;
  Expr *pLimit = p->pLimit;

  if( p->iLimit ) return;

  /* 
  ** "LIMIT -1" always shows all rows.  There is some
  ** controversy about what the correct behavior should be.
  ** The current implementation interprets "LIMIT 0" to mean
  ** no rows.
  */
  if( pLimit ){
    FUNC2( pLimit->op==TK_LIMIT );
    FUNC2( pLimit->pLeft!=0 );
    p->iLimit = iLimit = ++pParse->nMem;
    v = FUNC5(pParse);
    FUNC2( v!=0 );
    if( FUNC4(pLimit->pLeft, &n) ){
      FUNC8(v, OP_Integer, n, iLimit);
      FUNC0((v, "LIMIT counter"));
      if( n==0 ){
        FUNC10(v, iBreak);
      }else if( n>=0 && p->nSelectRow>FUNC6((u64)n) ){
        p->nSelectRow = FUNC6((u64)n);
        p->selFlags |= SF_FixedLimit;
      }
    }else{
      FUNC3(pParse, pLimit->pLeft, iLimit);
      FUNC7(v, OP_MustBeInt, iLimit); FUNC1(v);
      FUNC0((v, "LIMIT counter"));
      FUNC8(v, OP_IfNot, iLimit, iBreak); FUNC1(v);
    }
    if( pLimit->pRight ){
      p->iOffset = iOffset = ++pParse->nMem;
      pParse->nMem++;   /* Allocate an extra register for limit+offset */
      FUNC3(pParse, pLimit->pRight, iOffset);
      FUNC7(v, OP_MustBeInt, iOffset); FUNC1(v);
      FUNC0((v, "OFFSET counter"));
      FUNC9(v, OP_OffsetLimit, iLimit, iOffset+1, iOffset);
      FUNC0((v, "LIMIT+OFFSET"));
    }
  }
}