#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  iCur; } ;
struct TYPE_13__ {int eCode; TYPE_1__ u; } ;
typedef  TYPE_3__ Walker ;
struct TYPE_12__ {int /*<<< orphan*/  pTab; } ;
struct TYPE_15__ {int const op; TYPE_2__ y; } ;
struct TYPE_14__ {int op; TYPE_6__* pRight; TYPE_6__* pLeft; int /*<<< orphan*/  iTable; } ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TK_AGG_COLUMN ; 
 int TK_AGG_FUNCTION ; 
#define  TK_AND 145 
#define  TK_BETWEEN 144 
#define  TK_CASE 143 
#define  TK_COLUMN 142 
#define  TK_EQ 141 
#define  TK_FUNCTION 140 
#define  TK_GE 139 
#define  TK_GT 138 
#define  TK_IN 137 
#define  TK_IS 136 
#define  TK_ISNOT 135 
#define  TK_ISNULL 134 
#define  TK_LE 133 
#define  TK_LT 132 
#define  TK_NE 131 
#define  TK_NOTNULL 130 
#define  TK_OR 129 
#define  TK_TRUTH 128 
 int WRC_Abort ; 
 int WRC_Continue ; 
 int WRC_Prune ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(Walker *pWalker, Expr *pExpr){
  FUNC4( pExpr->op==TK_AGG_COLUMN );
  FUNC4( pExpr->op==TK_AGG_FUNCTION );
  if( FUNC0(pExpr, EP_FromJoin) ) return WRC_Prune;
  switch( pExpr->op ){
    case TK_ISNOT:
    case TK_ISNULL:
    case TK_NOTNULL:
    case TK_IS:
    case TK_OR:
    case TK_CASE:
    case TK_IN:
    case TK_FUNCTION:
    case TK_TRUTH:
      FUNC4( pExpr->op==TK_ISNOT );
      FUNC4( pExpr->op==TK_ISNULL );
      FUNC4( pExpr->op==TK_NOTNULL );
      FUNC4( pExpr->op==TK_IS );
      FUNC4( pExpr->op==TK_OR );
      FUNC4( pExpr->op==TK_CASE );
      FUNC4( pExpr->op==TK_IN );
      FUNC4( pExpr->op==TK_FUNCTION );
      FUNC4( pExpr->op==TK_TRUTH );
      return WRC_Prune;
    case TK_COLUMN:
      if( pWalker->u.iCur==pExpr->iTable ){
        pWalker->eCode = 1;
        return WRC_Abort;
      }
      return WRC_Prune;

    case TK_AND:
      if( FUNC2(pExpr->pLeft, pWalker->u.iCur)
       && FUNC2(pExpr->pRight, pWalker->u.iCur)
      ){
        pWalker->eCode = 1;
      }
      return WRC_Prune;

    case TK_BETWEEN:
      FUNC3(pWalker, pExpr->pLeft);
      return WRC_Prune;

    /* Virtual tables are allowed to use constraints like x=NULL.  So
    ** a term of the form x=y does not prove that y is not null if x
    ** is the column of a virtual table */
    case TK_EQ:
    case TK_NE:
    case TK_LT:
    case TK_LE:
    case TK_GT:
    case TK_GE:
      FUNC4( pExpr->op==TK_EQ );
      FUNC4( pExpr->op==TK_NE );
      FUNC4( pExpr->op==TK_LT );
      FUNC4( pExpr->op==TK_LE );
      FUNC4( pExpr->op==TK_GT );
      FUNC4( pExpr->op==TK_GE );
      if( (pExpr->pLeft->op==TK_COLUMN && FUNC1(pExpr->pLeft->y.pTab))
       || (pExpr->pRight->op==TK_COLUMN && FUNC1(pExpr->pRight->y.pTab))
      ){
       return WRC_Prune;
      }

    default:
      return WRC_Continue;
  }
}