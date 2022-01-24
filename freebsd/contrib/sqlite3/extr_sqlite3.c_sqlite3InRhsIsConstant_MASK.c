#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pLeft; } ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(Expr *pIn){
  Expr *pLHS;
  int res;
  FUNC1( !FUNC0(pIn, EP_xIsSelect) );
  pLHS = pIn->pLeft;
  pIn->pLeft = 0;
  res = FUNC2(pIn);
  pIn->pLeft = pLHS;
  return res;
}