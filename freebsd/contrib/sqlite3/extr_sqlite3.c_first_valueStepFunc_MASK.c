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
struct NthValueCtx {scalar_t__ pValue; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct NthValueCtx *p;
  p = (struct NthValueCtx*)FUNC1(pCtx, sizeof(*p));
  if( p && p->pValue==0 ){
    p->pValue = FUNC3(apArg[0]);
    if( !p->pValue ){
      FUNC2(pCtx);
    }
  }
  FUNC0(nArg);
  FUNC0(apArg);
}